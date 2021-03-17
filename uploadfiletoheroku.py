# from django.http import HttpResponse, JsonResponse
import requests
import cloudinary.uploader




def uploadvideotoheroku(filepath,YTtitle):
    try:
        print(filepath)
        filepath = str(filepath)
        # filepath = filepath.replace(' ','\ ')
        filepath="final.mp4"
        print(filepath)
        myurl = 'https://youtuberestframework.eu-gb.cf.appdomain.cloud/videouploadwithcloudinary/'
        upload_data = cloudinary.uploader.upload_large(filepath)
        videoPublicId=str(upload_data['public_id'])
        videoUrl=str(upload_data['secure_url'])
        print(videoPublicId)
        print(videoUrl)
        title=YTtitle
        
        getdata = requests.post(myurl,data={'title':title,'videoPublicId':videoPublicId,'videoUrl':videoUrl})
        print(getdata.text)  
        # r=requests.post('http://lit-sierra-15246.herokuapp.com/videoupload/')
    except Exception as e:
        print(e)