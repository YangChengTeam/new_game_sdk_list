.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;
.super Landroid/os/AsyncTask;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMtCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mtCode:Ljava/lang/String;

.field mtype:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "mtype"    # Ljava/lang/String;
    .param p3, "mtCode"    # Ljava/lang/String;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 890
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->mtype:Ljava/lang/String;

    .line 891
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->mtCode:Ljava/lang/String;

    .line 892
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 901
    new-instance v0, Lcom/game/sdk/engin/UpdateMtCodeEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->mtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->mtCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/UpdateMtCodeEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .local v0, "updateMtCodeEngin":Lcom/game/sdk/engin/UpdateMtCodeEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/UpdateMtCodeEngin;->run()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 907
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 908
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$UpdateMtCodeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 896
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 897
    return-void
.end method
