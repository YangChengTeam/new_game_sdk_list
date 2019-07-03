.class Lcom/game/sdk/TTWSDKActivity$4;
.super Ljava/lang/Object;
.source "TTWSDKActivity.java"

# interfaces
.implements Lcom/game/sdk/domain/OnLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/TTWSDKActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/TTWSDKActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/TTWSDKActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/TTWSDKActivity$4;->this$0:Lcom/game/sdk/TTWSDKActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V
    .locals 2
    .param p1, "errorMsg"    # Lcom/game/sdk/domain/LoginErrorMsg;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity$4;->this$0:Lcom/game/sdk/TTWSDKActivity;

    iget-object v1, p1, Lcom/game/sdk/domain/LoginErrorMsg;->msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V
    .locals 2
    .param p1, "logincallback"    # Lcom/game/sdk/domain/LogincallBack;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "login success--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/game/sdk/TTWSDKActivity$4;->this$0:Lcom/game/sdk/TTWSDKActivity;

    iget-object v0, v0, Lcom/game/sdk/TTWSDKActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->createFloatButton()V

    .line 131
    return-void
.end method
