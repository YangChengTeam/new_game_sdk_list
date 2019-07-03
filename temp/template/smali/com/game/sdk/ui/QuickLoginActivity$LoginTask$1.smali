.class Lcom/game/sdk/ui/QuickLoginActivity$LoginTask$1;
.super Ljava/lang/Object;
.source "QuickLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask$1;->this$1:Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask$1;->this$1:Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;

    invoke-static {v0}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->access$2(Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;)Lcom/game/sdk/ui/QuickLoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/ui/QuickLoginActivity;->finish()V

    .line 319
    return-void
.end method
