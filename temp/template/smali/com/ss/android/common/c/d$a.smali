.class Lcom/ss/android/common/c/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/common/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/ss/android/common/c/d;


# direct methods
.method constructor <init>(Lcom/ss/android/common/c/d;)V
    .locals 1

    .prologue
    .line 401
    iput-object p1, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    .line 402
    const-string v0, "DeviceRegisterThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/common/c/d$a;->a:I

    .line 403
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 463
    invoke-static {}, Lcom/ss/android/common/c/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;J)J

    .line 467
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->i(Lcom/ss/android/common/c/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->i(Lcom/ss/android/common/c/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/c/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v1}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user_agent"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONTokener;

    iget-object v1, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v1}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 475
    :try_start_1
    const-string v0, "custom"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 476
    if-nez v0, :cond_7

    .line 477
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 478
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 479
    invoke-static {}, Lcom/ss/android/common/c/d;->m()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :try_start_2
    invoke-static {}, Lcom/ss/android/common/c/d;->m()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 481
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    :try_start_3
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 484
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 497
    :catch_0
    move-exception v0

    .line 500
    :cond_4
    :goto_3
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 502
    const-string v1, "magic_tag"

    const-string v3, "ss_app_log"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v1, "header"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v1, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 506
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ss/android/common/c/d;->a(Z)Z

    .line 507
    invoke-static {}, Lcom/ss/android/common/c/d;->o()Ljava/lang/ThreadLocal;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 508
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/common/c/d$a;->a(Ljava/lang/String;)Z

    move-result v1

    .line 509
    invoke-static {}, Lcom/ss/android/common/c/d;->p()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 510
    const/4 v0, 0x0

    :try_start_5
    invoke-static {v0}, Lcom/ss/android/common/c/d;->a(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 512
    :try_start_6
    invoke-static {}, Lcom/ss/android/common/c/d;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 516
    :goto_4
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 517
    const/4 v0, 0x1

    :try_start_8
    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Z)Z

    .line 518
    invoke-static {}, Lcom/ss/android/common/c/d;->o()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 520
    if-nez v1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;ZZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 524
    :catch_1
    move-exception v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 481
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    .line 487
    :cond_5
    const-string v0, "custom"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v0, "user_unique_id"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    const-string v1, "device_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-static {}, Lcom/ss/android/common/c/d;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 492
    const-string v0, "user_unique_id"

    invoke-static {}, Lcom/ss/android/common/c/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 494
    :cond_6
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 495
    const-string v0, "user_unique_id"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 513
    :catch_2
    move-exception v0

    .line 514
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 516
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/ss/android/common/c/d$a;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/ss/android/common/c/d$a;->a()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 19

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 669
    :goto_0
    return-void

    .line 576
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {}, Lcom/ss/android/common/c/e;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;I)I

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v2}, Lcom/ss/android/common/c/d;->l(Lcom/ss/android/common/c/d;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 579
    const-string v2, "last_config_version"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v3}, Lcom/ss/android/common/c/d;->d(Lcom/ss/android/common/c/d;)I

    move-result v3

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v2}, Lcom/ss/android/common/c/d;->m(Lcom/ss/android/common/c/d;)Ljava/lang/String;

    move-result-object v3

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-virtual {v2}, Lcom/ss/android/common/c/d;->d()Ljava/lang/String;

    move-result-object v14

    .line 583
    invoke-static {v14}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v15

    .line 584
    const-string v2, "install_id"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 585
    const-string v2, "device_id"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 586
    const-string v2, "ssid"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 587
    const/4 v2, 0x0

    .line 589
    invoke-static/range {v16 .. v16}, Lcom/ss/android/common/applog/aa;->isBadId(Ljava/lang/String;)Z

    move-result v5

    .line 590
    invoke-static {v4}, Lcom/ss/android/common/applog/aa;->isBadId(Ljava/lang/String;)Z

    move-result v18

    .line 592
    if-nez v5, :cond_1

    if-nez v18, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/ss/android/common/c/d;->c(Lcom/ss/android/common/c/d;J)J

    .line 594
    const-string v6, "last_config_time"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v7}, Lcom/ss/android/common/c/d;->f(Lcom/ss/android/common/c/d;)J

    move-result-wide v8

    invoke-interface {v13, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 597
    :cond_1
    if-eqz v5, :cond_2

    .line 598
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 599
    const-string v6, "response"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    const-string v7, "tt_fetch_did_error"

    invoke-static {v6, v7, v5}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 603
    :cond_2
    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v5}, Lcom/ss/android/common/c/d;->m(Lcom/ss/android/common/c/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v2, v4}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    const/4 v2, 0x1

    .line 606
    invoke-static {v3}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 608
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 609
    const-string v5, "old_id"

    invoke-virtual {v12, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v3, "new_id"

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    const/4 v4, 0x0

    const-string v5, "umeng"

    const-string v6, "iid_change"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 619
    :cond_3
    :goto_1
    if-nez v18, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 620
    const/4 v2, 0x1

    .line 621
    invoke-static {v14}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 623
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-virtual {v3}, Lcom/ss/android/common/c/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-virtual {v4}, Lcom/ss/android/common/c/d;->c()Ljava/lang/String;

    move-result-object v4

    .line 626
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 627
    const-string v5, "old_id"

    invoke-virtual {v12, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    const-string v5, "new_id"

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v5, "openudid"

    invoke-virtual {v12, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v3, "clientudid"

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    const/4 v4, 0x0

    const-string v5, "umeng"

    const-string v6, "did_change"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :cond_4
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "None"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v3}, Lcom/ss/android/common/c/d;->n(Lcom/ss/android/common/c/d;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/ss/android/common/c/d;->b(Lcom/ss/android/common/c/d;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    const/4 v2, 0x1

    .line 643
    :cond_5
    if-eqz v18, :cond_6

    .line 649
    :cond_6
    if-eqz v2, :cond_7

    .line 651
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v3}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "install_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v5}, Lcom/ss/android/common/c/d;->m(Lcom/ss/android/common/c/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v3}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "device_id"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v3}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ssid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v5}, Lcom/ss/android/common/c/d;->n(Lcom/ss/android/common/c/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v3, "install_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v4}, Lcom/ss/android/common/c/d;->m(Lcom/ss/android/common/c/d;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 656
    const-string v3, "device_id"

    move-object/from16 v0, v16

    invoke-interface {v13, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    const-string v3, "ssid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v4}, Lcom/ss/android/common/c/d;->n(Lcom/ss/android/common/c/d;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
    :cond_7
    :goto_3
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 665
    if-eqz v2, :cond_8

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v2}, Lcom/ss/android/common/c/d;->o(Lcom/ss/android/common/c/d;)V

    .line 668
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    const/4 v3, 0x1

    invoke-static {v2, v3, v15}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;ZZ)V

    goto/16 :goto_0

    .line 659
    :catch_0
    move-exception v3

    goto :goto_3

    .line 634
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 612
    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 531
    :try_start_0
    const-string v0, "RegisterServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_log_config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 533
    invoke-static {}, Lcom/ss/android/common/c/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 537
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->j(Lcom/ss/android/common/c/d;)J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v0, v8, v10

    if-gez v0, :cond_4

    move v3, v6

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0, v4, v5}, Lcom/ss/android/common/c/d;->b(Lcom/ss/android/common/c/d;J)J

    .line 542
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "RegisterServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_0
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 546
    iget-object v4, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v4}, Lcom/ss/android/common/c/d;->k(Lcom/ss/android/common/c/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    :try_start_1
    iget-object v4, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v4}, Lcom/ss/android/common/c/d;->i(Lcom/ss/android/common/c/d;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v0, v4, v3}, Lcom/ss/android/common/applog/aa;->sendEncryptLog(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 555
    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move v0, v7

    .line 564
    :goto_2
    return v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 553
    :cond_2
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 557
    :cond_3
    const-string v1, "RegisterServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device_register response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-direct {p0, v1}, Lcom/ss/android/common/c/d$a;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v6

    .line 564
    goto :goto_2

    .line 560
    :catch_1
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 562
    goto :goto_2

    :cond_4
    move v3, v7

    goto/16 :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 674
    iget v0, p0, Lcom/ss/android/common/c/d$a;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    .line 675
    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/applog/aa;->isBadId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/applog/aa;->isBadId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 676
    :goto_0
    iget v1, p0, Lcom/ss/android/common/c/d$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/common/c/d$a;->a:I

    .line 677
    return v0

    .line 675
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v12, 0x0

    .line 407
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 408
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "device_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v3, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/ss/android/common/c/d;->a(Lcom/ss/android/common/c/d;Z)V

    .line 410
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Lcom/ss/android/common/c/d;)V

    .line 412
    :goto_1
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->c(Lcom/ss/android/common/c/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    :goto_2
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "RegisterServiceController"

    const-string v1, "DeviceRegisterThread finished"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 409
    goto :goto_0

    .line 415
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 416
    const-wide/32 v8, 0x1499700

    .line 417
    const-wide/32 v4, 0xea60

    .line 418
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->d(Lcom/ss/android/common/c/d;)I

    move-result v0

    invoke-static {}, Lcom/ss/android/common/c/e;->a()I

    move-result v3

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 420
    :goto_3
    invoke-static {}, Lcom/ss/android/common/c/a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v3}, Lcom/ss/android/common/c/d;->e(Lcom/ss/android/common/c/d;)J

    move-result-wide v10

    cmp-long v3, v10, v12

    if-gez v3, :cond_3

    if-eqz v0, :cond_3

    .line 422
    const-wide/32 v8, 0x2932e00

    .line 424
    :cond_3
    if-eqz v0, :cond_4

    .line 425
    const-wide/32 v4, 0x2bf20

    .line 428
    :cond_4
    invoke-direct {p0}, Lcom/ss/android/common/c/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 429
    const-wide/16 v4, 0x7530

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->f(Lcom/ss/android/common/c/d;)J

    move-result-wide v10

    sub-long v10, v6, v10

    sub-long/2addr v8, v10

    .line 433
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->g(Lcom/ss/android/common/c/d;)J

    move-result-wide v10

    sub-long v10, v6, v10

    sub-long/2addr v4, v10

    .line 435
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 436
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    cmp-long v0, v8, v12

    if-gez v0, :cond_8

    move-wide v4, v6

    .line 438
    :goto_4
    const-string v0, "RegisterServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next query time : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_6
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->h(Lcom/ss/android/common/c/d;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 441
    cmp-long v0, v8, v12

    if-lez v0, :cond_a

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->c(Lcom/ss/android/common/c/d;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_9

    .line 444
    :try_start_1
    monitor-exit v3

    goto/16 :goto_2

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    move v0, v2

    .line 418
    goto/16 :goto_3

    .line 437
    :cond_8
    add-long v4, v6, v8

    goto :goto_4

    .line 446
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->h(Lcom/ss/android/common/c/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    :cond_a
    :goto_5
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/common/c/d$a;->b:Lcom/ss/android/common/c/d;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->c(Lcom/ss/android/common/c/d;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 452
    monitor-exit v3

    goto/16 :goto_2

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 454
    :cond_b
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 455
    invoke-direct {p0}, Lcom/ss/android/common/c/d$a;->a()V

    goto/16 :goto_1
.end method
