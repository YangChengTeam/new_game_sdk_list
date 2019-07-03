.class public Lcom/ipaynow/plugin/manager/cache/MessageCache;
.super Ljava/lang/Object;


# instance fields
.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/ipaynow/plugin/presenter/BasePresenter;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Lcom/ipaynow/plugin/view/IpaynowLoading;

.field private an:Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

.field private ao:Landroid/app/Activity;

.field private b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->N:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->O:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->P:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Q:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->R:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->S:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->T:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->U:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->V:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->W:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->X:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Y:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Z:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->aa:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ab:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ac:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ad:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ae:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->af:Z

    iput-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ag:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ah:Z

    iput-object v2, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ak:Ljava/lang/String;

    iput-object v2, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->al:Ljava/lang/String;

    iput-object v2, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iput-object v2, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->am:Lcom/ipaynow/plugin/view/IpaynowLoading;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/manager/cache/MessageCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/manager/cache/MessageCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/manager/cache/a;->t()Lcom/ipaynow/plugin/manager/cache/MessageCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ak:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->al:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->aj:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ai:Lcom/ipaynow/plugin/presenter/BasePresenter;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantCallResultActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ao:Landroid/app/Activity;

    return-object v0
.end method

.method public getMerchantCallResultReceive()Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->an:Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    return-object v0
.end method

.method public getMhtLoading()Lcom/ipaynow/plugin/view/IpaynowLoading;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->am:Lcom/ipaynow/plugin/view/IpaynowLoading;

    return-object v0
.end method

.method public getNowPayOrderNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSysReserveSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->al:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginActivity()Lcom/ipaynow/plugin/presenter/BasePresenter;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ai:Lcom/ipaynow/plugin/presenter/BasePresenter;

    return-object v0
.end method

.method public getRequestParams()Lcom/ipaynow/plugin/manager/route/dto/RequestParams;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    return-object v0
.end method

.method public isAddAllPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->P:Z

    return v0
.end method

.method public isAddMustRequestParams()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Q:Z

    return v0
.end method

.method public isAlipayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->T:Z

    return v0
.end method

.method public isBaiduPayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->U:Z

    return v0
.end method

.method public isCheckClient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ah:Z

    return v0
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->R:Z

    return v0
.end method

.method public isLegalPayChannelType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->S:Z

    return v0
.end method

.method public isMainThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->N:Z

    return v0
.end method

.method public isPluginStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->aa:Z

    return v0
.end method

.method public isQqPayInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ae:Z

    return v0
.end method

.method public isQqPayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->V:Z

    return v0
.end method

.method public isQqPaySupportVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ad:Z

    return v0
.end method

.method public isSoLibraryLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ag:Z

    return v0
.end method

.method public isUpmpPayPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->W:Z

    return v0
.end method

.method public isUsePreSignTools()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->O:Z

    return v0
.end method

.method public isViewPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Z:Z

    return v0
.end method

.method public isWechatInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ac:Z

    return v0
.end method

.method public isWechatPaySupportVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ab:Z

    return v0
.end method

.method public isWechatPluginPaySupportVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->af:Z

    return v0
.end method

.method public isWechatPluginPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Y:Z

    return v0
.end method

.method public isWechatWapPluginInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->X:Z

    return v0
.end method

.method public setAddAllPermissionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->P:Z

    return-object p0
.end method

.method public setAddMustRequestParamsFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Q:Z

    return-object p0
.end method

.method public setAlipayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->T:Z

    return-void
.end method

.method public setBaiduPayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->U:Z

    return-void
.end method

.method public setCheckClient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ah:Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->context:Landroid/content/Context;

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->aj:Ljava/lang/String;

    return-void
.end method

.method public setInitedFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->R:Z

    return-object p0
.end method

.method public setLegalPayChannelTypeFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->S:Z

    return-object p0
.end method

.method public setMainThreadFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->N:Z

    return-object p0
.end method

.method public setMerchantCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ao:Landroid/app/Activity;

    return-object p0
.end method

.method public setMerchantCallResultReceive(Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->an:Lcom/ipaynow/plugin/manager/route/impl/ReceivePayResult;

    return-object p0
.end method

.method public setMhtLoading(Lcom/ipaynow/plugin/view/IpaynowLoading;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->am:Lcom/ipaynow/plugin/view/IpaynowLoading;

    return-void
.end method

.method public setNowPayOrderNo(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ak:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderSysReserveSign(Ljava/lang/String;)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->al:Ljava/lang/String;

    return-object p0
.end method

.method public setPluginActivity(Lcom/ipaynow/plugin/presenter/BasePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ai:Lcom/ipaynow/plugin/presenter/BasePresenter;

    return-void
.end method

.method public setPluginStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->aa:Z

    return-void
.end method

.method public setQqPayInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ae:Z

    return-void
.end method

.method public setQqPayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->V:Z

    return-void
.end method

.method public setQqPaySupportVersionFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ad:Z

    return-void
.end method

.method public setRequestParams(Lcom/ipaynow/plugin/manager/route/dto/RequestParams;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->b:Lcom/ipaynow/plugin/manager/route/dto/RequestParams;

    return-void
.end method

.method public setSoLibraryLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ag:Z

    return-void
.end method

.method public setUpmpPayPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->W:Z

    return-void
.end method

.method public setUsePreSignToolsFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->O:Z

    return-void
.end method

.method public setViewPluginInstalled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Z:Z

    return-void
.end method

.method public setWechatInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ac:Z

    return-void
.end method

.method public setWechatPaySupportVersionFlag(Z)Lcom/ipaynow/plugin/manager/cache/MessageCache;
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->ab:Z

    return-object p0
.end method

.method public setWechatPluginPaySupportVersionFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->af:Z

    return-void
.end method

.method public setWechatPluginPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->Y:Z

    return-void
.end method

.method public setWechatWapPluginInstalledFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/manager/cache/MessageCache;->X:Z

    return-void
.end method
