.class Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;
.super Landroid/os/AsyncTask;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainModuleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)V
    .locals 0

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)Lcom/game/sdk/ui/fragment/MainFragment;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$14(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/MainModuleEngin;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;-><init>(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/engin/MainModuleEngin;->getModuleInfoList(ILcom/game/sdk/net/listeners/Callback;)V

    .line 904
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 909
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 910
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 877
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 878
    return-void
.end method
