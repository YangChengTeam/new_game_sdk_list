.class Lcom/game/sdk/ui/UserInfoActivity$3;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/UserInfoActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game/sdk/net/listeners/Callback",
        "<",
        "Lcom/game/sdk/domain/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity$3;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 461
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$3;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/UserInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 462
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 463
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 464
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$3;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$18(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$3;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/UserInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 447
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 449
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 450
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UpdateInfo;->face:Ljava/lang/String;

    iput-object v1, v2, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    .line 451
    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/UpdateInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UpdateInfo;->pointMessage:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$3;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$18(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    return-void

    .line 454
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
