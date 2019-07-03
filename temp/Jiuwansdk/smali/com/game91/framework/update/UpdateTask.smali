.class public Lcom/game91/framework/update/UpdateTask;
.super Landroid/os/AsyncTask;
.source "UpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_FAILED:I = 0x1

.field public static final TYPE_SUCCESS:I


# instance fields
.field private lastProgress:F

.field private mDir:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mListener:Lcom/game91/framework/update/UpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/game91/framework/update/UpdateTask;->lastProgress:F

    .line 32
    return-void
.end method

.method private getContentLength(Ljava/lang/String;)J
    .locals 7
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Lcom/game91/library/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/game91/library/okhttp/OkHttpClient;-><init>()V

    .line 141
    .local v0, "client":Lcom/game91/library/okhttp/OkHttpClient;
    new-instance v6, Lcom/game91/library/okhttp/Request$Builder;

    invoke-direct {v6}, Lcom/game91/library/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v6, p1}, Lcom/game91/library/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/game91/library/okhttp/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/game91/library/okhttp/Request$Builder;->build()Lcom/game91/library/okhttp/Request;

    move-result-object v4

    .line 143
    .local v4, "request":Lcom/game91/library/okhttp/Request;
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/game91/library/okhttp/OkHttpClient;->newCall(Lcom/game91/library/okhttp/Request;)Lcom/game91/library/okhttp/Call;

    move-result-object v6

    invoke-interface {v6}, Lcom/game91/library/okhttp/Call;->execute()Lcom/game91/library/okhttp/Response;

    move-result-object v5

    .line 144
    .local v5, "response":Lcom/game91/library/okhttp/Response;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/game91/library/okhttp/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    invoke-virtual {v5}, Lcom/game91/library/okhttp/Response;->body()Lcom/game91/library/okhttp/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/game91/library/okhttp/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 146
    .local v2, "contentLength":J
    invoke-virtual {v5}, Lcom/game91/library/okhttp/Response;->body()Lcom/game91/library/okhttp/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/game91/library/okhttp/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "contentLength":J
    .end local v5    # "response":Lcom/game91/library/okhttp/Response;
    :goto_0
    return-wide v2

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 25
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 53
    const-wide/16 v8, 0x0

    .line 54
    .local v8, "downloadLength":J
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/update/UpdateTask;->mDir:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_1

    .line 56
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_1
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/update/UpdateTask;->mFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 60
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 63
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/update/UpdateTask;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/game91/framework/update/UpdateTask;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    .line 64
    .local v4, "contentLength":J
    const-wide/16 v22, 0x0

    cmp-long v21, v4, v22

    if-nez v21, :cond_4

    .line 65
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 112
    :cond_3
    :goto_0
    return-object v21

    .line 66
    :cond_4
    cmp-long v21, v4, v8

    if-nez v21, :cond_5

    .line 67
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto :goto_0

    .line 70
    :cond_5
    new-instance v3, Lcom/game91/library/okhttp/OkHttpClient;

    invoke-direct {v3}, Lcom/game91/library/okhttp/OkHttpClient;-><init>()V

    .line 71
    .local v3, "client":Lcom/game91/library/okhttp/OkHttpClient;
    new-instance v21, Lcom/game91/library/okhttp/Request$Builder;

    invoke-direct/range {v21 .. v21}, Lcom/game91/library/okhttp/Request$Builder;-><init>()V

    const-string v22, "RANGE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bytes="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 72
    invoke-virtual/range {v21 .. v23}, Lcom/game91/library/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/library/okhttp/Request$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/framework/update/UpdateTask;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 73
    invoke-virtual/range {v21 .. v22}, Lcom/game91/library/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/game91/library/okhttp/Request$Builder;

    move-result-object v21

    .line 74
    invoke-virtual/range {v21 .. v21}, Lcom/game91/library/okhttp/Request$Builder;->build()Lcom/game91/library/okhttp/Request;

    move-result-object v14

    .line 76
    .local v14, "request":Lcom/game91/library/okhttp/Request;
    const/4 v11, 0x0

    .line 77
    .local v11, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 79
    .local v16, "savedFile":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v3, v14}, Lcom/game91/library/okhttp/OkHttpClient;->newCall(Lcom/game91/library/okhttp/Request;)Lcom/game91/library/okhttp/Call;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/game91/library/okhttp/Call;->execute()Lcom/game91/library/okhttp/Response;

    move-result-object v15

    .line 80
    .local v15, "response":Lcom/game91/library/okhttp/Response;
    if-eqz v15, :cond_a

    .line 81
    invoke-virtual {v15}, Lcom/game91/library/okhttp/Response;->body()Lcom/game91/library/okhttp/ResponseBody;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/game91/library/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v11

    .line 82
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string v21, "rw"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v16    # "savedFile":Ljava/io/RandomAccessFile;
    .local v17, "savedFile":Ljava/io/RandomAccessFile;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 84
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v2, v0, [B

    .line 85
    .local v2, "b":[B
    const/16 v20, 0x0

    .line 87
    .local v20, "total":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 88
    .local v18, "time":J
    :goto_1
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "len":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_8

    .line 89
    add-int v20, v20, v12

    .line 90
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 92
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    long-to-float v0, v8

    move/from16 v22, v0

    add-float v21, v21, v22

    const/high16 v22, 0x42c80000    # 100.0f

    mul-float v21, v21, v22

    long-to-float v0, v4

    move/from16 v22, v0

    div-float v13, v21, v22

    .line 93
    .local v13, "progress":F
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Float;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/game91/framework/update/UpdateTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 98
    .end local v2    # "b":[B
    .end local v12    # "len":I
    .end local v13    # "progress":F
    .end local v18    # "time":J
    .end local v20    # "total":I
    :catch_0
    move-exception v7

    move-object/from16 v16, v17

    .line 99
    .end local v15    # "response":Lcom/game91/library/okhttp/Response;
    .end local v17    # "savedFile":Ljava/io/RandomAccessFile;
    .local v7, "e":Ljava/io/IOException;
    .restart local v16    # "savedFile":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    if-eqz v11, :cond_6

    .line 103
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 105
    :cond_6
    if-eqz v16, :cond_7

    .line 106
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 112
    .end local v7    # "e":Ljava/io/IOException;
    :cond_7
    :goto_3
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_0

    .line 95
    .end local v16    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "b":[B
    .restart local v12    # "len":I
    .restart local v15    # "response":Lcom/game91/library/okhttp/Response;
    .restart local v17    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v18    # "time":J
    .restart local v20    # "total":I
    :cond_8
    :try_start_4
    invoke-virtual {v15}, Lcom/game91/library/okhttp/Response;->body()Lcom/game91/library/okhttp/ResponseBody;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/game91/library/okhttp/ResponseBody;->close()V

    .line 96
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v21

    .line 102
    if-eqz v11, :cond_9

    .line 103
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 105
    :cond_9
    if-eqz v17, :cond_3

    .line 106
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v7

    .line 109
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 102
    .end local v2    # "b":[B
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "len":I
    .end local v17    # "savedFile":Ljava/io/RandomAccessFile;
    .end local v18    # "time":J
    .end local v20    # "total":I
    .restart local v16    # "savedFile":Ljava/io/RandomAccessFile;
    :cond_a
    if-eqz v11, :cond_b

    .line 103
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 105
    :cond_b
    if-eqz v16, :cond_7

    .line 106
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 108
    :catch_2
    move-exception v7

    .line 109
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 108
    .end local v15    # "response":Lcom/game91/library/okhttp/Response;
    .local v7, "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 109
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 101
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 102
    :goto_4
    if-eqz v11, :cond_c

    .line 103
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 105
    :cond_c
    if-eqz v16, :cond_d

    .line 106
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 111
    :cond_d
    :goto_5
    throw v21

    .line 108
    :catch_4
    move-exception v7

    .line 109
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 101
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "response":Lcom/game91/library/okhttp/Response;
    .restart local v17    # "savedFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v21

    move-object/from16 v16, v17

    .end local v17    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "savedFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 98
    .end local v15    # "response":Lcom/game91/library/okhttp/Response;
    :catch_5
    move-exception v7

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/game91/framework/update/UpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/game91/framework/update/UpdateTask;->mListener:Lcom/game91/framework/update/UpdateListener;

    invoke-interface {v0}, Lcom/game91/framework/update/UpdateListener;->onSuccess()V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/game91/framework/update/UpdateTask;->mListener:Lcom/game91/framework/update/UpdateListener;

    invoke-interface {v0}, Lcom/game91/framework/update/UpdateListener;->onFailed()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game91/framework/update/UpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Float;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Float;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 118
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 119
    .local v0, "progress":F
    iget v1, p0, Lcom/game91/framework/update/UpdateTask;->lastProgress:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/game91/framework/update/UpdateTask;->mListener:Lcom/game91/framework/update/UpdateListener;

    invoke-interface {v1, v0}, Lcom/game91/framework/update/UpdateListener;->onProgress(F)V

    .line 121
    iput v0, p0, Lcom/game91/framework/update/UpdateTask;->lastProgress:F

    .line 123
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/game91/framework/update/UpdateTask;->onProgressUpdate([Ljava/lang/Float;)V

    return-void
.end method

.method public setDownloadFile(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/update/UpdateTask;
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p2, p0, Lcom/game91/framework/update/UpdateTask;->mFileName:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/game91/framework/update/UpdateTask;->mDir:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/game91/framework/update/UpdateTask;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/game91/framework/update/UpdateTask;->mDownloadUrl:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public setUpdateListener(Lcom/game91/framework/update/UpdateListener;)Lcom/game91/framework/update/UpdateTask;
    .locals 0
    .param p1, "listener"    # Lcom/game91/framework/update/UpdateListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/game91/framework/update/UpdateTask;->mListener:Lcom/game91/framework/update/UpdateListener;

    .line 47
    return-object p0
.end method
