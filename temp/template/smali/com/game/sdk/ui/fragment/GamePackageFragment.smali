.class public Lcom/game/sdk/ui/fragment/GamePackageFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "GamePackageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/GamePackageFragment$DownAsyncTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

.field private backIv:Landroid/widget/ImageView;

.field private currentPage:I

.field private gameId:Ljava/lang/String;

.field private gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

.field gamePackageDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackageDetail;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private lastItem:I

.field private listView:Landroid/widget/ListView;

.field private loadMoreIcon:Landroid/widget/ImageView;

.field private loadMoreLayout:Landroid/widget/LinearLayout;

.field private loadMoreView:Landroid/view/View;

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private noDataIv:Landroid/widget/ImageView;

.field private noMoreLayout:Landroid/widget/LinearLayout;

.field private noMoreTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->currentPage:I

    .line 84
    new-instance v0, Lcom/game/sdk/ui/fragment/GamePackageFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment$1;-><init>(Lcom/game/sdk/ui/fragment/GamePackageFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->handler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Lcom/game/sdk/adapter/GamePackageDetailAdapter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->noMoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->noMoreTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->noDataIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/GamePackageFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public downBoxApp()V
    .locals 3

    .prologue
    .line 268
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\u6e38\u620f\u76d2\u5b50"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/service/DownGameBoxService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 277
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u4e0b\u8f7d\u5730\u5740\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public gameBoxDown()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "com.game.sdk.service.DownGameBoxService"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 247
    new-instance v0, Ljava/io/File;

    const-string v1, "game_box"

    invoke-static {v1}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-static {v0}, Lcom/game/sdk/utils/ZipUtil;->isArchiveFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Lcom/game/sdk/ui/fragment/GamePackageFragment$DownAsyncTask;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment$DownAsyncTask;-><init>(Lcom/game/sdk/ui/fragment/GamePackageFragment;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/fragment/GamePackageFragment$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 264
    .end local v0    # "downFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 255
    .restart local v0    # "downFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 256
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u76d2\u5b50\u6587\u4ef6\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->downBoxApp()V

    goto :goto_0

    .line 262
    .end local v0    # "downFile":Ljava/io/File;
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u4e2d"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "fysdk_game_package_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->gamePackageDetailList:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->gamePackageDetailList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    .line 167
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0, p0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->setDownListener(Lcom/game/sdk/adapter/GamePackageDetailAdapter$DownApkListener;)V

    .line 168
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadGamePackageDetailData()V

    .line 171
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public initVars()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initVars()V

    .line 128
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 130
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->gameId:Ljava/lang/String;

    .line 133
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 139
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "layout"

    const-string v3, "list_view_footer"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreView:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreView:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "id"

    const-string v3, "load_more_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreLayout:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreView:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "id"

    const-string v3, "no_more_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 143
    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->noMoreLayout:Landroid/widget/LinearLayout;

    .line 145
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "id"

    const-string v3, "loading_icon"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreIcon:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "id"

    const-string v3, "no_more_tv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->noMoreTv:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "id"

    const-string v3, "no_data_iv"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->noDataIv:Landroid/widget/ImageView;

    .line 149
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->backIv:Landroid/widget/ImageView;

    .line 150
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->titleTv:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "game_package_detail_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const-string v0, "game_package_detail_list"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->listView:Landroid/widget/ListView;

    .line 153
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/game/sdk/engin/GamePackageDetailEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/GamePackageDetailEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

    .line 156
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 158
    return-void
.end method

.method public loadGamePackageDetailData()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;

    iget v1, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->currentPage:I

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->gameId:Ljava/lang/String;

    new-instance v3, Lcom/game/sdk/ui/fragment/GamePackageFragment$2;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment$2;-><init>(Lcom/game/sdk/ui/fragment/GamePackageFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/engin/GamePackageDetailEngin;->getGamePackageDetailList(ILjava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 282
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 181
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 306
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->lastItem:I

    .line 307
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 287
    if-nez p2, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->noMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->adapter:Lcom/game/sdk/adapter/GamePackageDetailAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/adapter/GamePackageDetailAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->startAnimation()V

    .line 296
    iget v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->currentPage:I

    .line 298
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadGamePackageDetailData()V

    .line 302
    :cond_0
    return-void
.end method

.method public rotaAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 315
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 317
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 318
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 319
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 320
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 321
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 322
    return-object v0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/GamePackageFragment;->rotaAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 329
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/GamePackageFragment;->loadMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 335
    :cond_0
    return-void
.end method
