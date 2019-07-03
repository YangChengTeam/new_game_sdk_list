.class Lcom/game91/framework/act/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Lcom/game91/permissions/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/act/PermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/act/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/game91/framework/act/PermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/act/PermissionActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/game91/framework/act/PermissionActivity$1;->this$0:Lcom/game91/framework/act/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onDeny(Ljava/lang/String;I)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/game91/framework/act/PermissionActivity$1;->this$0:Lcom/game91/framework/act/PermissionActivity;

    invoke-static {v1}, Lcom/game91/framework/act/PermissionActivity;->getGameActivityName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/game91/framework/act/PermissionActivity$1;->this$0:Lcom/game91/framework/act/PermissionActivity;

    invoke-virtual {v1, v0}, Lcom/game91/framework/act/PermissionActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v1, p0, Lcom/game91/framework/act/PermissionActivity$1;->this$0:Lcom/game91/framework/act/PermissionActivity;

    invoke-virtual {v1}, Lcom/game91/framework/act/PermissionActivity;->finish()V

    .line 62
    return-void
.end method

.method public onGuarantee(Ljava/lang/String;I)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 72
    return-void
.end method
