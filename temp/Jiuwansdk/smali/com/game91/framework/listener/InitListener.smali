.class public Lcom/game91/framework/listener/InitListener;
.super Ljava/lang/Object;
.source "InitListener.java"

# interfaces
.implements Lcom/game91/framework/core/IInit;


# instance fields
.field isCheckSign:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game91/framework/listener/InitListener;->isCheckSign:Z

    return-void
.end method

.method static synthetic access$000(Lcom/game91/framework/listener/InitListener;Landroid/app/Activity;Lcom/game91/framework/http/PluginBean$Plugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/listener/InitListener;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/game91/framework/http/PluginBean$Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/game91/framework/listener/InitListener;->loadPlugin(Landroid/app/Activity;Lcom/game91/framework/http/PluginBean$Plugin;)V

    return-void
.end method

.method private loadPlugin(Landroid/app/Activity;Lcom/game91/framework/http/PluginBean$Plugin;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "plugin"    # Lcom/game91/framework/http/PluginBean$Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "exists":Z
    const-string v4, "support_apk"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "dir":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/game91/framework/http/PluginBean$Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/game91/framework/util/ApkUtils;->getApkVersionCode(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p2}, Lcom/game91/framework/http/PluginBean$Plugin;->getVersion()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 97
    :cond_0
    if-nez v2, :cond_1

    .line 98
    invoke-virtual {p2}, Lcom/game91/framework/http/PluginBean$Plugin;->getDownload()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/game91/framework/util/DownloadUtils;->download(Ljava/lang/String;Ljava/io/File;)V

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    iget-boolean v0, p0, Lcom/game91/framework/listener/InitListener;->isCheckSign:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game91/framework/listener/InitListener;->isCheckSign:Z

    .line 39
    invoke-static {p1}, Lcom/game91/framework/util/ApkSignerTools;->checkApkGame91Sign(Landroid/app/Activity;)V

    .line 41
    :cond_0
    new-instance v0, Lcom/game91/framework/listener/InitListener$3;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/listener/InitListener$3;-><init>(Lcom/game91/framework/listener/InitListener;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/game91/library/rxjava/Observable;->create(Lcom/game91/library/rxjava/ObservableOnSubscribe;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/game91/library/rxjava/schedulers/Schedulers;->io()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->subscribeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/game91/library/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/game91/library/rxjava/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/library/rxjava/Observable;->observeOn(Lcom/game91/library/rxjava/Scheduler;)Lcom/game91/library/rxjava/Observable;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/listener/InitListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/game91/framework/listener/InitListener$1;-><init>(Lcom/game91/framework/listener/InitListener;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    new-instance v2, Lcom/game91/framework/listener/InitListener$2;

    invoke-direct {v2, p0, p3}, Lcom/game91/framework/listener/InitListener$2;-><init>(Lcom/game91/framework/listener/InitListener;Lcom/game91/framework/callback/Callback;)V

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/game91/library/rxjava/Observable;->subscribe(Lcom/game91/library/rxjava/functions/Consumer;Lcom/game91/library/rxjava/functions/Consumer;)Lcom/game91/library/rxjava/disposables/Disposable;

    .line 85
    return-void
.end method
