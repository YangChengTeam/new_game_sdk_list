.class public Lcom/game/sdk/ui/fragment/MainFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;,
        Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;,
        Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;,
        Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

.field private adapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/adapter/MainModuleAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private autoLoginTv:Landroid/widget/TextView;

.field private backIv:Landroid/widget/ImageView;

.field private bgLayout:Landroid/widget/LinearLayout;

.field private boxDownDialog:Lcom/game/sdk/view/BoxDownDialog;

.field private callDialog:Lcom/game/sdk/view/ServiceDialog;

.field private changeAccountTv:Landroid/widget/TextView;

.field private chargeBtn:Landroid/widget/Button;

.field private curIndex:I

.field private currentIndex:I

.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

.field private gameCountLayout:Landroid/widget/LinearLayout;

.field private gameCountTv:Landroid/widget/TextView;

.field private gameMoneyListIv:Landroid/widget/ImageView;

.field private guideLayout:Landroid/widget/LinearLayout;

.field private guidePopWindow:Landroid/widget/PopupWindow;

.field private guideUtil:Lcom/game/sdk/utils/GuideUtil;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field headBitmap:Landroid/graphics/Bitmap;

.field private i:I

.field private images:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private isShowGuide:Z

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

.field private mobileIv:Landroid/widget/ImageView;

.field private mobileLayout:Landroid/widget/LinearLayout;

.field private mobileTv:Landroid/widget/TextView;

.field private moduleGridView:Landroid/widget/GridView;

.field private moduleGridView1:Landroid/widget/GridView;

.field moduleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nickNameLayout:Landroid/widget/LinearLayout;

.field private nicknNameTv:Landroid/widget/TextView;

.field private pageCount:I

.field private pageSize:I

.field private payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

.field private platformCountLayout:Landroid/widget/LinearLayout;

.field private platformCountTv:Landroid/widget/TextView;

.field private platformRefreshIv:Landroid/widget/ImageView;

.field private pointLayout:Landroid/widget/LinearLayout;

.field private points:[Landroid/widget/ImageView;

.field private shareDialog:Lcom/game/sdk/view/ShareDialog;

.field private shareIv:Landroid/widget/ImageView;

.field private slideSwitchButton:Lcom/game/sdk/view/SlideSwitchButton;

.field private titleLayout:Landroid/widget/RelativeLayout;

.field private titleLogo:Landroid/widget/ImageView;

.field private userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

.field private userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

.field private userMemberLevelIv:Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vpAdapter:Lcom/game/sdk/adapter/ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 171
    iput v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageCount:I

    .line 173
    const/4 v0, 0x6

    iput v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageSize:I

    .line 175
    iput v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->curIndex:I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->guideUtil:Lcom/game/sdk/utils/GuideUtil;

    .line 187
    iput v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->i:I

    .line 194
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/MainFragment$1;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->guidePopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userMemberLevelIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/UserInfoEngin;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

    return-object v0
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/MainModuleEngin;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    return-object v0
.end method

.method static synthetic access$15(Lcom/game/sdk/ui/fragment/MainFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 919
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/fragment/MainFragment;->saveModuleList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$16(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/engin/PayCoinEngin;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-void
.end method

.method static synthetic access$17(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$18(Lcom/game/sdk/ui/fragment/MainFragment;Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->isShowGuide:Z

    return-void
.end method

.method static synthetic access$19(Lcom/game/sdk/ui/fragment/MainFragment;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->i:I

    return v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->bgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$20(Lcom/game/sdk/ui/fragment/MainFragment;I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->i:I

    return-void
.end method

.method static synthetic access$21(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->guideLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/game/sdk/ui/fragment/MainFragment;)[I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    return-object v0
.end method

.method static synthetic access$23(Lcom/game/sdk/ui/fragment/MainFragment;)I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->curIndex:I

    return v0
.end method

.method static synthetic access$24(Lcom/game/sdk/ui/fragment/MainFragment;)I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageSize:I

    return v0
.end method

.method static synthetic access$25(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/view/ServiceDialog;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    return-void
.end method

.method static synthetic access$26(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/ServiceDialog;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    return-object v0
.end method

.method static synthetic access$27(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pointLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$28(Lcom/game/sdk/ui/fragment/MainFragment;I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->curIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/MainFragment;)Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->isShowGuide:Z

    return v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/CustomRoundImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nicknNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private getModuleList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    const/4 v1, 0x0

    .line 940
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lcom/game/sdk/utils/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 941
    .local v2, "moduleStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get--moduleStr---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 942
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 943
    const-class v3, Lcom/game/sdk/domain/ModuleInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 948
    .end local v2    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPoint()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 609
    const-string v2, "gride_point_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 611
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 626
    iput v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    .line 628
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 629
    return-void

    .line 616
    :cond_0
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 618
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 620
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private saveModuleList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p2, "moduleList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 921
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "moduleStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save--moduleStr---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 924
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .end local v1    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 925
    .restart local v1    # "moduleStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurDot(I)V
    .locals 3
    .param p1, "positon"    # I

    .prologue
    const/4 v2, 0x1

    .line 970
    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    iget v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    if-ne v0, p1, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 974
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 976
    iput p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method public downBoxApp(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1123
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_4

    .line 1124
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1126
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "score_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1130
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "package_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1134
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1135
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "gamecenter_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1138
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1139
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "my_coin_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1142
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\u6e38\u620f\u76d2\u5b50"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/service/DownGameBoxService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1144
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1149
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1147
    :cond_4
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u4e0b\u8f7d\u5730\u5740\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public gameBoxDown(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "com.game.sdk.service.DownGameBoxService"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1103
    new-instance v0, Ljava/io/File;

    const-string v1, "game_box"

    invoke-static {v1}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1105
    invoke-static {v0}, Lcom/game/sdk/utils/ZipUtil;->isArchiveFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_0

    .line 1107
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    new-instance v1, Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;

    invoke-direct {v1, p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1120
    .end local v0    # "downFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1111
    .restart local v0    # "downFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1112
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u76d2\u5b50\u6587\u4ef6\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :cond_2
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment;->downBoxApp(I)V

    goto :goto_0

    .line 1118
    .end local v0    # "downFile":Ljava/io/File;
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u4e2d"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "fysdk_main_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 405
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->initTheme()V

    .line 407
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isSpeedUp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->initViewPager()V

    .line 417
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 418
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initGuidePop()V
    .locals 11

    .prologue
    const/16 v10, 0x12c

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 345
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, "is_show_guide"

    invoke-virtual {v3, v4, v7}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->isShowGuide:Z

    .line 347
    iget-boolean v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->isShowGuide:Z

    if-nez v3, :cond_2

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "tempW":I
    const/4 v1, 0x0

    .line 351
    .local v1, "tempH":I
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v3, v3, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v4, 0x1fe

    invoke-static {v3, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    .line 353
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v3, v10}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 354
    new-array v3, v9, [I

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "drawable"

    const-string v6, "horizontal_guide1"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v7

    .line 355
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "drawable"

    const-string v6, "horizontal_guide2"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v8

    .line 354
    iput-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    .line 357
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-boolean v3, v3, Lcom/game/sdk/domain/UserInfo;->isGameReturn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    array-length v3, v3

    if-lez v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "drawable"

    const-string v6, "horizontal_guide3"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v7

    .line 362
    :cond_0
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v3, v3, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-ne v3, v8, :cond_1

    .line 363
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v3, v10}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    .line 364
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v4, 0x1ae

    invoke-static {v3, v4}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 365
    new-array v3, v9, [I

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "drawable"

    const-string v6, "vertical_guide1"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v7

    .line 366
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "drawable"

    const-string v6, "vertical_guide2"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v8

    .line 365
    iput-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    .line 368
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-boolean v3, v3, Lcom/game/sdk/domain/UserInfo;->isGameReturn:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "drawable"

    const-string v6, "vertical_guide3"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v7

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v3}, Lcom/game/sdk/ui/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 374
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "layout"

    const-string v6, "horizontal_guide"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, "popView":Landroid/view/View;
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v4, "id"

    const-string v5, "guide_view"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 376
    iput-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->guideLayout:Landroid/widget/LinearLayout;

    .line 378
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->guideLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->images:[I

    iget v5, p0, Lcom/game/sdk/ui/fragment/MainFragment;->i:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 379
    iget v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->i:I

    .line 380
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->guideLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/game/sdk/ui/fragment/MainFragment$3;

    invoke-direct {v4, p0}, Lcom/game/sdk/ui/fragment/MainFragment$3;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v0, v2, v1, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->guidePopWindow:Landroid/widget/PopupWindow;

    .line 399
    .end local v0    # "popView":Landroid/view/View;
    .end local v1    # "tempH":I
    .end local v2    # "tempW":I
    :cond_2
    return-void
.end method

.method public initTheme()V
    .locals 19

    .prologue
    .line 666
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v16, :cond_0

    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLogo:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    sget-object v17, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 670
    :cond_0
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v16, :cond_2

    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 671
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 672
    .local v2, "bgColor":Ljava/lang/String;
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 673
    .local v9, "headColor":Ljava/lang/String;
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 674
    .local v3, "btnColor":Ljava/lang/String;
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->bgLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 676
    .local v1, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "#"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 679
    invoke-static {v9}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 680
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/GradientDrawable;

    .line 682
    .local v14, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v16, "#00000000"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 693
    .end local v1    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v11

    .line 701
    .local v11, "roundRadius":I
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "#"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 703
    .local v4, "fillColor":I
    const-string v16, "#979696"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 706
    .local v5, "fillColorPressed":I
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 707
    .local v7, "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 708
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 711
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 712
    .local v8, "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 713
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 715
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 718
    .local v13, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v10, 0x10100a7

    .line 719
    .local v10, "pressed":I
    const v15, 0x101009d

    .line 720
    .local v15, "window_focused":I
    const v6, 0x101009c

    .line 721
    .local v6, "focused":I
    const v12, 0x10100a1

    .line 723
    .local v12, "selected":I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v10, v16, v17

    const/16 v17, 0x1

    aput v15, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 724
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v10, v16, v17

    const/16 v17, 0x1

    neg-int v0, v6

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 725
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 726
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v6, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 727
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    neg-int v0, v12

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    neg-int v0, v6

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    neg-int v0, v10

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->slideSwitchButton:Lcom/game/sdk/view/SlideSwitchButton;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/game/sdk/view/SlideSwitchButton;->setLineColor(Ljava/lang/String;)V

    .line 735
    .end local v2    # "bgColor":Ljava/lang/String;
    .end local v3    # "btnColor":Ljava/lang/String;
    .end local v4    # "fillColor":I
    .end local v5    # "fillColorPressed":I
    .end local v6    # "focused":I
    .end local v7    # "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    .end local v8    # "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    .end local v9    # "headColor":Ljava/lang/String;
    .end local v10    # "pressed":I
    .end local v11    # "roundRadius":I
    .end local v12    # "selected":I
    .end local v13    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "window_focused":I
    :cond_2
    return-void

    .line 684
    .restart local v1    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v2    # "bgColor":Ljava/lang/String;
    .restart local v3    # "btnColor":Ljava/lang/String;
    .restart local v9    # "headColor":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/GradientDrawable;

    .line 685
    .restart local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "#"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 688
    .end local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/GradientDrawable;

    .line 689
    .restart local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v16, "#00000000"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initUserInfo()V
    .locals 2

    .prologue
    .line 597
    sget-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_0

    .line 599
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 600
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 601
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public initViewPager()V
    .locals 8

    .prologue
    .line 426
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    invoke-virtual {v3}, Lcom/game/sdk/engin/MainModuleEngin;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/game/sdk/ui/fragment/MainFragment;->getModuleList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    .line 427
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 428
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageSize:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageCount:I

    .line 433
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageCount:I

    if-lt v2, v3, :cond_3

    .line 572
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 573
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/game/sdk/adapter/ViewPagerAdapter;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lcom/game/sdk/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 577
    :cond_2
    iget v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 578
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pointLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->setOvalLayout()V

    .line 584
    :goto_1
    return-void

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->inflater:Landroid/view/LayoutInflater;

    .line 435
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "module_view_pager"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 434
    check-cast v1, Landroid/widget/GridView;

    .line 437
    .local v1, "gridView":Landroid/widget/GridView;
    new-instance v0, Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    iget v5, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageSize:I

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/game/sdk/adapter/MainModuleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 438
    .local v0, "adapterItem":Lcom/game/sdk/adapter/MainModuleAdapter;
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v3, Lcom/game/sdk/ui/fragment/MainFragment$4;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/MainFragment$4;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "adapterItem":Lcom/game/sdk/adapter/MainModuleAdapter;
    .end local v1    # "gridView":Landroid/widget/GridView;
    :cond_4
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pointLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public initViews()V
    .locals 4

    .prologue
    .line 250
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 251
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 252
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/ui/MainActivity;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 253
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->inflater:Landroid/view/LayoutInflater;

    .line 254
    new-instance v1, Lcom/game/sdk/view/BoxDownDialog;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-direct {v1, v2}, Lcom/game/sdk/view/BoxDownDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->boxDownDialog:Lcom/game/sdk/view/BoxDownDialog;

    .line 256
    const-string v1, "bg_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->bgLayout:Landroid/widget/LinearLayout;

    .line 257
    const-string v1, "common_title"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    .line 259
    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->backIv:Landroid/widget/ImageView;

    .line 260
    const-string v1, "game_sdk_logo"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLogo:Landroid/widget/ImageView;

    .line 261
    const-string v1, "share_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareIv:Landroid/widget/ImageView;

    .line 262
    const-string v1, "nick_name_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nickNameLayout:Landroid/widget/LinearLayout;

    .line 263
    const-string v1, "mobile_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileLayout:Landroid/widget/LinearLayout;

    .line 265
    const-string v1, "user_head_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/view/CustomRoundImageView;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    .line 266
    const-string v1, "user_member_level_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userMemberLevelIv:Landroid/widget/ImageView;

    .line 267
    const-string v1, "nick_name_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nicknNameTv:Landroid/widget/TextView;

    .line 268
    const-string v1, "mobile_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileIv:Landroid/widget/ImageView;

    .line 269
    const-string v1, "mobile_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileTv:Landroid/widget/TextView;

    .line 271
    const-string v1, "platform_count_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountLayout:Landroid/widget/LinearLayout;

    .line 272
    const-string v1, "game_count_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountLayout:Landroid/widget/LinearLayout;

    .line 274
    const-string v1, "platform_count_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;

    .line 275
    const-string v1, "game_count_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;

    .line 277
    const-string v1, "platform_refresh_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformRefreshIv:Landroid/widget/ImageView;

    .line 278
    const-string v1, "game_money_list_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameMoneyListIv:Landroid/widget/ImageView;

    .line 279
    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    .line 283
    const-string v1, "is_auto_login_switch"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/view/SlideSwitchButton;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->slideSwitchButton:Lcom/game/sdk/view/SlideSwitchButton;

    .line 284
    const-string v1, "auto_login_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->autoLoginTv:Landroid/widget/TextView;

    .line 285
    const-string v1, "change_account_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 288
    const-string v1, "gride_point_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pointLayout:Landroid/widget/LinearLayout;

    .line 290
    new-instance v2, Lcom/game/sdk/engin/UserInfoEngin;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/game/sdk/engin/UserInfoEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

    .line 291
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/engin/MainModuleEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/MainModuleEngin;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapters:Ljava/util/List;

    .line 297
    const-string v1, "viewpager"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 299
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->autoLoginTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    invoke-virtual {v1, p0}, Lcom/game/sdk/view/CustomRoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nickNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    const-string v2, "is_auto_login"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 315
    .local v0, "isAutoLogin":Z
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->slideSwitchButton:Lcom/game/sdk/view/SlideSwitchButton;

    invoke-virtual {v1, v0}, Lcom/game/sdk/view/SlideSwitchButton;->setSwitchOpen(Z)V

    .line 316
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    const-string v2, "is_auto_login"

    invoke-virtual {v1, v2, v0}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->slideSwitchButton:Lcom/game/sdk/view/SlideSwitchButton;

    new-instance v2, Lcom/game/sdk/ui/fragment/MainFragment$2;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/fragment/MainFragment$2;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    invoke-virtual {v1, v2}, Lcom/game/sdk/view/SlideSwitchButton;->setOnStateChangedListener(Lcom/game/sdk/view/SlideSwitchButton$OnStateChangedListener;)V

    .line 340
    return-void

    .line 290
    .end local v0    # "isAutoLogin":Z
    :cond_0
    const-string v1, ""

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 741
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "share_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 745
    new-instance v1, Lcom/game/sdk/view/ShareDialog;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-direct {v1, v2}, Lcom/game/sdk/view/ShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareDialog:Lcom/game/sdk/view/ShareDialog;

    .line 746
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareDialog:Lcom/game/sdk/view/ShareDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/ShareDialog;->show()V

    goto :goto_0

    .line 750
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "user_head_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 751
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 756
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "nick_name_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 757
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 763
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "mobile_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 764
    sput v3, Lcom/game/sdk/domain/GoagalInfo;->bindMobileFrom:I

    .line 765
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    goto :goto_0

    .line 769
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "charge_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 773
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 774
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 775
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 777
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1, v3, v3}, Lcom/game/sdk/ui/MainActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 789
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "platform_count_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 790
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->toGameBoxPersionInfo()V

    goto/16 :goto_0

    .line 793
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "game_count_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 794
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->toGameBoxPersionInfo()V

    goto/16 :goto_0

    .line 797
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "change_account_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 798
    const/4 v1, 0x2

    sput v1, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 800
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 801
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v1}, Lcom/game/sdk/FYGameSDK;->switchUser()V

    .line 802
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 806
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "auto_login_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 807
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->slideSwitchButton:Lcom/game/sdk/view/SlideSwitchButton;

    invoke-virtual {v1}, Lcom/game/sdk/view/SlideSwitchButton;->setClickSwitchOpen()V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 982
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ModuleInfo;

    .line 983
    .local v2, "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_0

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "SERVER_CALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 986
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "call_service"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 988
    new-instance v6, Lcom/game/sdk/view/ServiceDialog;

    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v6, v7, v8}, Lcom/game/sdk/view/ServiceDialog;-><init>(Landroid/app/Activity;F)V

    iput-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    .line 989
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/game/sdk/view/ServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 990
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/ServiceDialog;->show()V

    .line 992
    :cond_0
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "COMPAIGN_CENTER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 994
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "active_center"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 995
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 997
    :cond_1
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_2

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "CHARGE_RECORD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1003
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 1005
    :cond_2
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_3

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "SCORE_STORE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1012
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1015
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "score_open_game_box"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1017
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 1019
    .local v3, "pwd":Ljava/lang/String;
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 1022
    .local v1, "mobile":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gamebox://?act=GoodTypeActivity&pwd="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1023
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1022
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1025
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u79ef\u5206\u5546\u57ceURI---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1027
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v6, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1033
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_4

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "GAME_PACKAGE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1046
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1049
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "package_open_game_box"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1051
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 1053
    .restart local v3    # "pwd":Ljava/lang/String;
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 1057
    .restart local v1    # "mobile":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"game_id\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", \"game_name\":\"\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 1058
    .local v4, "tempData":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gamebox://?act=GiftListActivity&pwd="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1059
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1058
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1061
    .restart local v5    # "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6e38\u620f\u793c\u5305URI---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1063
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v6, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1070
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "tempData":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_3
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_5

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "ACCOUNT_SAFETY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1071
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "account_safety"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1072
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 1076
    :cond_5
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_6

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "GAME_CENTER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1077
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1080
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "gamecenter_open_game_box"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1082
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 1084
    .restart local v3    # "pwd":Ljava/lang/String;
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 1087
    .restart local v1    # "mobile":Ljava/lang/String;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gamebox://?act=MainActivity&pwd="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1088
    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1087
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1090
    .restart local v5    # "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6e38\u620f\u4e2d\u5fc3---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1092
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v6, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1098
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_6
    :goto_5
    return-void

    .line 1020
    .restart local v2    # "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    .restart local v3    # "pwd":Ljava/lang/String;
    :cond_7
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_0

    .line 1029
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto/16 :goto_1

    .line 1054
    .restart local v3    # "pwd":Ljava/lang/String;
    :cond_9
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_2

    .line 1066
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto/16 :goto_3

    .line 1085
    .restart local v3    # "pwd":Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_4

    .line 1094
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto :goto_5
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 954
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 959
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment;->setCurDot(I)V

    .line 964
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1205
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 1207
    const-string v0, "MainFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 588
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 591
    const-string v0, "MainFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 593
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 594
    return-void
.end method

.method public setOvalLayout()V
    .locals 6

    .prologue
    .line 635
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pageCount:I

    if-lt v0, v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pointLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "id"

    const-string v4, "v_dot"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 640
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "drawable"

    const-string v4, "module_point_select"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 642
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/game/sdk/ui/fragment/MainFragment$5;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/fragment/MainFragment$5;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 659
    return-void

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->pointLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v4, "layout"

    const-string v5, "fysdk_dot"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toGameBoxPersionInfo()V
    .locals 6

    .prologue
    .line 816
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v4}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 818
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "my_coin_open_game_box"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 820
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "pwd":Ljava/lang/String;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 825
    .local v1, "mobile":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gamebox://?act=MainActivity&tab=3&pwd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&username="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 826
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 825
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 828
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e38\u620f\u76d2\u5b50\u4e2a\u4eba\u4e2d\u5fc3---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 829
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 830
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v4, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 835
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 823
    .restart local v2    # "pwd":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 832
    .end local v2    # "pwd":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto :goto_1
.end method
