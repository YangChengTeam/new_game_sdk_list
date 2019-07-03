.class public Lcom/game91/framework/listener/SplashListener;
.super Ljava/lang/Object;
.source "SplashListener.java"

# interfaces
.implements Lcom/game91/framework/core/ISplash;


# instance fields
.field private linearLayout:Landroid/widget/LinearLayout;

.field private mDialog:Lcom/game91/framework/dialog/DialogWindow;

.field private mShowLogo:Z

.field private mShowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/game91/framework/listener/SplashListener;->mShowLogo:Z

    .line 44
    iput-boolean v0, p0, Lcom/game91/framework/listener/SplashListener;->mShowed:Z

    return-void
.end method

.method private static getSplash(Z)Ljava/lang/String;
    .locals 11
    .param p0, "lands"    # Z

    .prologue
    .line 85
    const-string v5, ""

    .line 86
    .local v5, "host":Ljava/lang/String;
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 87
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 88
    .local v6, "sourceDir":Ljava/lang/String;
    const/4 v7, 0x0

    .line 90
    .local v7, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .local v8, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 92
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 94
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "entryName":Ljava/lang/String;
    const-string v9, "../"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_4

    .line 108
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryName":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v8, :cond_7

    .line 110
    :try_start_2
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .line 116
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 117
    if-eqz p0, :cond_6

    .line 118
    const-string v5, "ic_com_game91_sdk_update_dialog_top_lan"

    .line 123
    :cond_3
    :goto_2
    return-object v5

    .line 99
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryName":Ljava/lang/String;
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_3
    const-string v9, "META-INF/jw_splash_"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 100
    const-string v9, "META-INF/jw_splash_"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-static {v5}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 105
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 106
    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    if-eqz v7, :cond_2

    .line 110
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 113
    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v7, :cond_5

    .line 110
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 113
    :cond_5
    :goto_5
    throw v9

    .line 111
    :catch_3
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    const-string v5, "ic_com_game91_sdk_update_dialog_top_por"

    goto :goto_2

    .line 108
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 105
    :catch_4
    move-exception v1

    goto :goto_3

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_7
    move-object v7, v8

    .end local v8    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1
.end method


# virtual methods
.method public hideSplash(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/game91/framework/listener/SplashListener;->mDialog:Lcom/game91/framework/dialog/DialogWindow;

    invoke-virtual {v1}, Lcom/game91/framework/dialog/DialogWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showSplash(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, -0x1

    .line 47
    iget-boolean v5, p0, Lcom/game91/framework/listener/SplashListener;->mShowed:Z

    if-eqz v5, :cond_0

    .line 74
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-boolean v3, p0, Lcom/game91/framework/listener/SplashListener;->mShowed:Z

    .line 51
    const-string v5, "showJwSplash"

    invoke-static {p1, v5, v3}, Lcom/game91/framework/util/DeviceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/game91/framework/listener/SplashListener;->mShowLogo:Z

    .line 53
    new-instance v5, Lcom/game91/framework/widget/SplashBackgroundLayout;

    invoke-direct {v5, p1}, Lcom/game91/framework/widget/SplashBackgroundLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/game91/framework/listener/SplashListener;->linearLayout:Landroid/widget/LinearLayout;

    .line 55
    iget-boolean v5, p0, Lcom/game91/framework/listener/SplashListener;->mShowLogo:Z

    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 58
    .local v0, "h":I
    iget-object v5, p0, Lcom/game91/framework/listener/SplashListener;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 59
    iget-object v5, p0, Lcom/game91/framework/listener/SplashListener;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 60
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "splashView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/game91/framework/listener/SplashListener;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 64
    invoke-static {p1}, Lcom/game91/library/picasso/Picasso;->with(Landroid/content/Context;)Lcom/game91/library/picasso/Picasso;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///android_asset/plugins/images/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v0, v2, :cond_2

    .line 65
    :goto_1
    invoke-static {v3}, Lcom/game91/framework/listener/SplashListener;->getSplash(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".png"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/game91/library/picasso/Picasso;->load(Ljava/lang/String;)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v2, v0}, Lcom/game91/library/picasso/RequestCreator;->resize(II)Lcom/game91/library/picasso/RequestCreator;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v1}, Lcom/game91/library/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 70
    .end local v0    # "h":I
    .end local v1    # "splashView":Landroid/widget/ImageView;
    .end local v2    # "w":I
    :cond_1
    new-instance v3, Lcom/game91/framework/dialog/DialogWindow;

    invoke-direct {v3}, Lcom/game91/framework/dialog/DialogWindow;-><init>()V

    .line 71
    invoke-virtual {v3, v4}, Lcom/game91/framework/dialog/DialogWindow;->setCanCancelable(Z)Lcom/game91/framework/dialog/DialogWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/game91/framework/listener/SplashListener;->linearLayout:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {v3, v4}, Lcom/game91/framework/dialog/DialogWindow;->setContentView(Landroid/view/View;)Lcom/game91/framework/dialog/DialogWindow;

    move-result-object v3

    .line 73
    invoke-virtual {v3, p1}, Lcom/game91/framework/dialog/DialogWindow;->show(Landroid/app/Activity;)Lcom/game91/framework/dialog/DialogWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/game91/framework/listener/SplashListener;->mDialog:Lcom/game91/framework/dialog/DialogWindow;

    goto/16 :goto_0

    .restart local v0    # "h":I
    .restart local v1    # "splashView":Landroid/widget/ImageView;
    .restart local v2    # "w":I
    :cond_2
    move v3, v4

    .line 64
    goto :goto_1
.end method
