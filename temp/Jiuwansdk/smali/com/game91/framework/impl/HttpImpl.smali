.class public Lcom/game91/framework/impl/HttpImpl;
.super Ljava/lang/Object;
.source "HttpImpl.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp;


# instance fields
.field private mDelegate:Lcom/game91/framework/http/DelegateApi;

.field private mGson:Lcom/game91/library/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v3, Lcom/game91/library/gson/Gson;

    invoke-direct {v3}, Lcom/game91/library/gson/Gson;-><init>()V

    iput-object v3, p0, Lcom/game91/framework/impl/HttpImpl;->mGson:Lcom/game91/library/gson/Gson;

    .line 87
    new-instance v4, Lcom/game91/library/okhttp/OkHttpClient$Builder;

    invoke-direct {v4}, Lcom/game91/library/okhttp/OkHttpClient$Builder;-><init>()V

    new-instance v5, Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor;

    invoke-direct {v5}, Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor;-><init>()V

    .line 88
    invoke-static {}, Lcom/game91/framework/util/Logger;->isDebugMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor$Level;

    :goto_0
    invoke-virtual {v5, v3}, Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor;->setLevel(Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor$Level;)Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/game91/library/okhttp/OkHttpClient$Builder;->addInterceptor(Lcom/game91/library/okhttp/Interceptor;)Lcom/game91/library/okhttp/OkHttpClient$Builder;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/game91/library/okhttp/OkHttpClient$Builder;->build()Lcom/game91/library/okhttp/OkHttpClient;

    move-result-object v1

    .line 91
    .local v1, "client":Lcom/game91/library/okhttp/OkHttpClient;
    invoke-static {}, Lcom/game91/framework/impl/HttpImpl;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "HOST":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const-string v0, "http://sdk.jieyitong.cn"

    .line 95
    :cond_0
    new-instance v3, Lcom/game91/library/retrofit/Retrofit$Builder;

    invoke-direct {v3}, Lcom/game91/library/retrofit/Retrofit$Builder;-><init>()V

    .line 96
    invoke-virtual {v3, v0}, Lcom/game91/library/retrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lcom/game91/library/retrofit/Retrofit$Builder;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v1}, Lcom/game91/library/retrofit/Retrofit$Builder;->client(Lcom/game91/library/okhttp/OkHttpClient;)Lcom/game91/library/retrofit/Retrofit$Builder;

    move-result-object v3

    .line 98
    invoke-static {}, Lcom/game91/library/retrofit/adapter/rxjava/RxJava2CallAdapterFactory;->create()Lcom/game91/library/retrofit/adapter/rxjava/RxJava2CallAdapterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/game91/library/retrofit/Retrofit$Builder;->addCallAdapterFactory(Lcom/game91/library/retrofit/CallAdapter$Factory;)Lcom/game91/library/retrofit/Retrofit$Builder;

    move-result-object v3

    .line 99
    invoke-static {}, Lcom/game91/library/retrofit/converter/gson/GsonConverterFactory;->create()Lcom/game91/library/retrofit/converter/gson/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/game91/library/retrofit/Retrofit$Builder;->addConverterFactory(Lcom/game91/library/retrofit/Converter$Factory;)Lcom/game91/library/retrofit/Retrofit$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/game91/library/retrofit/Retrofit$Builder;->build()Lcom/game91/library/retrofit/Retrofit;

    move-result-object v2

    .line 101
    .local v2, "retrofit":Lcom/game91/library/retrofit/Retrofit;
    const-class v3, Lcom/game91/framework/http/DelegateApi;

    invoke-virtual {v2, v3}, Lcom/game91/library/retrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game91/framework/http/DelegateApi;

    iput-object v3, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    .line 103
    return-void

    .line 88
    .end local v0    # "HOST":Ljava/lang/String;
    .end local v1    # "client":Lcom/game91/library/okhttp/OkHttpClient;
    .end local v2    # "retrofit":Lcom/game91/library/retrofit/Retrofit;
    :cond_1
    sget-object v3, Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/game91/library/okhttp/interceptor/HttpLoggingInterceptor$Level;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/game91/framework/impl/HttpImpl;)Lcom/game91/library/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/impl/HttpImpl;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl;->mGson:Lcom/game91/library/gson/Gson;

    return-object v0
.end method

.method private static getHost()Ljava/lang/String;
    .locals 11

    .prologue
    .line 49
    const-string v5, ""

    .line 50
    .local v5, "host":Ljava/lang/String;
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 51
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 52
    .local v6, "sourceDir":Ljava/lang/String;
    const/4 v7, 0x0

    .line 54
    .local v7, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .local v8, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 56
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 57
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 58
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "entryName":Ljava/lang/String;
    const-string v9, "../"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_3

    .line 73
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryName":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v8, :cond_5

    .line 75
    :try_start_2
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .line 81
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_1
    return-object v5

    .line 63
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryName":Ljava/lang/String;
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_3
    const-string v9, "META-INF/jw_host_"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 64
    const-string v9, "META-INF/jw_host_"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {v5}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 70
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 71
    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/io/IOException;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    if-eqz v7, :cond_2

    .line 75
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 76
    :catch_1
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v1

    .line 77
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 78
    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v7, :cond_4

    .line 75
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 80
    :cond_4
    :goto_4
    throw v9

    .line 76
    :catch_3
    move-exception v1

    .line 77
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 70
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_5
    move-object v7, v8

    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/game91/framework/core/IHttp$CallString;
    .param p5, "error"    # Lcom/game91/framework/core/IHttp$CallError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/game91/framework/http/DelegateApi;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 279
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 280
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/impl/HttpImpl$15;

    invoke-direct {v1, p0, p4, p5}, Lcom/game91/framework/impl/HttpImpl$15;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v2, Lcom/game91/framework/impl/HttpImpl$16;

    invoke-direct {v2, p0, p5}, Lcom/game91/framework/impl/HttpImpl$16;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 296
    return-void
.end method

.method public init(Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallInit;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 3
    .param p2, "call"    # Lcom/game91/framework/core/IHttp$CallInit;
    .param p3, "error"    # Lcom/game91/framework/core/IHttp$CallError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallInit;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-interface {v0, p1}, Lcom/game91/framework/http/DelegateApi;->init(Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/impl/HttpImpl$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/game91/framework/impl/HttpImpl$1;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallInit;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v2, Lcom/game91/framework/impl/HttpImpl$2;

    invoke-direct {v2, p0, p3}, Lcom/game91/framework/impl/HttpImpl$2;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 125
    return-void
.end method

.method public login(Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallLogin;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 3
    .param p3, "call"    # Lcom/game91/framework/core/IHttp$CallLogin;
    .param p4, "error"    # Lcom/game91/framework/core/IHttp$CallError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallLogin;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-interface {v0, p2, p1}, Lcom/game91/framework/http/DelegateApi;->login(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/impl/HttpImpl$3;

    invoke-direct {v1, p0, p3, p4}, Lcom/game91/framework/impl/HttpImpl$3;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallLogin;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v2, Lcom/game91/framework/impl/HttpImpl$4;

    invoke-direct {v2, p0, p4}, Lcom/game91/framework/impl/HttpImpl$4;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 147
    return-void
.end method

.method public notify(Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 5
    .param p1, "payInfo"    # Lcom/game91/framework/callback/PayInfo;
    .param p4, "call"    # Lcom/game91/framework/core/IHttp$CallString;
    .param p5, "error"    # Lcom/game91/framework/core/IHttp$CallError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/game91/framework/callback/PayInfo;->hashMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/game91/framework/util/MapUtils;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 205
    .local v0, "bodys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "oid"

    invoke-virtual {p1}, Lcom/game91/framework/callback/PayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/game91/framework/util/MapUtils;->create()Lcom/game91/framework/util/MapUtils;

    move-result-object v2

    .line 207
    invoke-virtual {v2, v0}, Lcom/game91/framework/util/MapUtils;->put(Ljava/util/Map;)Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    .line 208
    .local v1, "mapUtils":Lcom/game91/framework/util/MapUtils;
    invoke-virtual {v1}, Lcom/game91/framework/util/MapUtils;->buildHeader()Ljava/util/Map;

    move-result-object p3

    .line 209
    const-string v2, "token"

    invoke-static {}, Lcom/game91/framework/impl/DelegateSdk;->delegate()Lcom/game91/framework/core/GameSdk;

    move-result-object v3

    invoke-interface {v3}, Lcom/game91/framework/core/GameSdk;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game91/framework/callback/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-interface {v2, p3, p2}, Lcom/game91/framework/http/DelegateApi;->notify(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;

    move-result-object v2

    .line 211
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v2

    .line 212
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v2

    new-instance v3, Lcom/game91/framework/impl/HttpImpl$9;

    invoke-direct {v3, p0, p4, p5}, Lcom/game91/framework/impl/HttpImpl$9;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v4, Lcom/game91/framework/impl/HttpImpl$10;

    invoke-direct {v4, p0, p5}, Lcom/game91/framework/impl/HttpImpl$10;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 213
    invoke-virtual {v2, v3, v4}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 229
    return-void
.end method

.method public pay(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallPay;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 5
    .param p4, "call"    # Lcom/game91/framework/core/IHttp$CallPay;
    .param p5, "error"    # Lcom/game91/framework/core/IHttp$CallError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallPay;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/game91/framework/util/MapUtils;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 177
    .local v0, "bodys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/game91/framework/util/MapUtils;->create()Lcom/game91/framework/util/MapUtils;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v0}, Lcom/game91/framework/util/MapUtils;->put(Ljava/util/Map;)Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    .line 179
    .local v1, "mapUtils":Lcom/game91/framework/util/MapUtils;
    invoke-virtual {v1}, Lcom/game91/framework/util/MapUtils;->buildHeader()Ljava/util/Map;

    move-result-object p3

    .line 180
    const-string v2, "token"

    invoke-static {}, Lcom/game91/framework/impl/DelegateSdk;->delegate()Lcom/game91/framework/core/GameSdk;

    move-result-object v3

    invoke-interface {v3}, Lcom/game91/framework/core/GameSdk;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game91/framework/callback/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v2, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-virtual {v1}, Lcom/game91/framework/util/MapUtils;->buildBody()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Lcom/game91/framework/http/DelegateApi;->pay(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;

    move-result-object v2

    .line 182
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v2

    .line 183
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v2

    new-instance v3, Lcom/game91/framework/impl/HttpImpl$7;

    invoke-direct {v3, p0, p4, p5}, Lcom/game91/framework/impl/HttpImpl$7;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallPay;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v4, Lcom/game91/framework/impl/HttpImpl$8;

    invoke-direct {v4, p0, p5}, Lcom/game91/framework/impl/HttpImpl$8;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 184
    invoke-virtual {v2, v3, v4}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 199
    return-void
.end method

.method public plugin(Lcom/game91/framework/core/IHttp$CallPlugin;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 3
    .param p1, "call"    # Lcom/game91/framework/core/IHttp$CallPlugin;
    .param p2, "error"    # Lcom/game91/framework/core/IHttp$CallError;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-interface {v0}, Lcom/game91/framework/http/DelegateApi;->plugin()Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 235
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/impl/HttpImpl$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/game91/framework/impl/HttpImpl$11;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallPlugin;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v2, Lcom/game91/framework/impl/HttpImpl$12;

    invoke-direct {v2, p0, p2}, Lcom/game91/framework/impl/HttpImpl$12;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 252
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/game91/framework/core/IHttp$CallString;
    .param p5, "error"    # Lcom/game91/framework/core/IHttp$CallError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/game91/framework/http/DelegateApi;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 257
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 258
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/impl/HttpImpl$13;

    invoke-direct {v1, p0, p4, p5}, Lcom/game91/framework/impl/HttpImpl$13;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v2, Lcom/game91/framework/impl/HttpImpl$14;

    invoke-direct {v2, p0, p5}, Lcom/game91/framework/impl/HttpImpl$14;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 274
    return-void
.end method

.method public submit(Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
    .locals 4
    .param p2, "call"    # Lcom/game91/framework/core/IHttp$CallString;
    .param p3, "error"    # Lcom/game91/framework/core/IHttp$CallError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    invoke-static {}, Lcom/game91/framework/impl/DelegateSdk;->delegate()Lcom/game91/framework/core/GameSdk;

    move-result-object v2

    invoke-interface {v2}, Lcom/game91/framework/core/GameSdk;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game91/framework/callback/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/game91/framework/impl/HttpImpl;->mDelegate:Lcom/game91/framework/http/DelegateApi;

    invoke-interface {v1, v0, p1}, Lcom/game91/framework/http/DelegateApi;->submit(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v1

    new-instance v2, Lcom/game91/framework/impl/HttpImpl$5;

    invoke-direct {v2, p0, p2, p3}, Lcom/game91/framework/impl/HttpImpl$5;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V

    new-instance v3, Lcom/game91/framework/impl/HttpImpl$6;

    invoke-direct {v3, p0, p3}, Lcom/game91/framework/impl/HttpImpl$6;-><init>(Lcom/game91/framework/impl/HttpImpl;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 171
    return-void
.end method
