.class public Lcom/game91/framework/http/PluginBean$Plugin;
.super Ljava/lang/Object;
.source "PluginBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/http/PluginBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plugin"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/game91/framework/http/PluginBean$Plugin;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/game91/framework/http/PluginBean$Plugin;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/game91/framework/http/PluginBean$Plugin;->version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "download"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/game91/framework/http/PluginBean$Plugin;->url:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/game91/framework/http/PluginBean$Plugin;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/game91/framework/http/PluginBean$Plugin;->version:Ljava/lang/String;

    .line 56
    return-void
.end method
