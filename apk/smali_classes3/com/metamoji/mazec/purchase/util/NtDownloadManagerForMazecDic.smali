.class public Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;
    }
.end annotation


# instance fields
.field m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->m_context:Landroid/content/Context;

    return-void
.end method

.method private static checkUpdateAsync(Landroid/content/Context;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)Ljava/util/LinkedHashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    const-string v0, "NtDownloadManagerForMazecDic#checkUpdateAsync"

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ALL:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->ja:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->en:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->fr:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->de:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->it:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->zhHans:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->zhHant:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->ko:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->es:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->ru:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->pt:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->nl:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->pl:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 311
    :cond_0
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_JA:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isKindle()Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    :cond_1
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->ja:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_2
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_EN:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 317
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isKindle()Z

    goto :goto_0

    .line 319
    :cond_3
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->en:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :goto_0
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_FR:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->fr:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_4
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_DE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->de:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_5
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_IT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->it:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_6
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ZH:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 331
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->zhHans:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->zhHant:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_7
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_KO:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 335
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->ko:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_8
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ES:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 338
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->es:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_9
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_RU:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 341
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->ru:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_a
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 344
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->pt:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_b
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_NL:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 347
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->nl:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_c
    sget-object v1, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PL:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isPurchaseProduct(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 350
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocale;->pl:Lcom/metamoji/mazec/purchase/util/NtLocale;

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;->getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_d
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_f

    if-eqz p2, :cond_e

    .line 357
    invoke-interface {p2, v3}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;->onFinish(Z)V

    :cond_e
    return-object v2

    .line 364
    :cond_f
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v1

    const/4 v4, 0x1

    .line 365
    invoke-virtual {v1, v3, v4}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v5

    .line 366
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v3

    :cond_10
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "[NtDownloadManagerForMazecDic]performDownloadTaskInBackground"

    if-eqz v9, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 368
    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 371
    :try_start_0
    invoke-virtual {v1, v9}, Lcom/metamoji/mazec/LangResouceManager;->getVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 373
    invoke-virtual {v6, v9, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    .line 376
    invoke-static {v9, v10}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    move v8, v4

    goto :goto_2

    .line 383
    :cond_12
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->updateStateAsync(Landroid/content/Context;)V

    if-eqz v8, :cond_14

    .line 386
    :catch_1
    :goto_3
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->GetState()I

    move-result v5

    if-nez v5, :cond_13

    const-wide/16 v11, 0x1f4

    .line 388
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 393
    :cond_13
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->GetState()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_14

    xor-int/lit8 v0, v8, 0x1

    .line 394
    new-instance v1, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$4;

    invoke-direct {v1, p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$4;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    invoke-static {p0, p1, v4, v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showOfflineMsg(Landroid/content/Context;ZZZLandroid/content/DialogInterface$OnClickListener;)V

    return-object v2

    .line 405
    :cond_14
    const-string p1, "mazec.dic"

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->GetDictionaryData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_16

    if-eqz p2, :cond_15

    .line 409
    invoke-interface {p2, v3}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;->onFinish(Z)V

    :cond_15
    return-object v2

    .line 415
    :cond_16
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 417
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 420
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/LangResouceManager;->getSupportedVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVer:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 426
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 427
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_18

    goto :goto_4

    .line 433
    :cond_18
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    if-nez v5, :cond_19

    goto :goto_5

    .line 437
    :cond_19
    iget v7, v5, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMajor:I

    .line 438
    iget v5, v5, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMinor:I

    if-le v3, v7, :cond_1a

    .line 441
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "[%s]need update. major version : local=%d, server=%d"

    invoke-static {v5, v3}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_1a
    if-ne v3, v7, :cond_17

    .line 444
    const-string v3, "Vlang-mi"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 446
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v5, :cond_17

    .line 447
    const-string v7, "[%s]need update. minor version : local=%d, server=%s"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    .line 452
    invoke-static {v3, v10}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 458
    :goto_5
    const-string/jumbo v3, "url"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_3
    move-exception v2

    .line 422
    invoke-static {v2, v10}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    .line 463
    :cond_1b
    invoke-static {p2, p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->saveUpdateInfo(Ljava/util/Map;Landroid/content/Context;)V

    return-object p2
.end method

.method public static clearUpdateCheckFlag(Landroid/content/Context;)V
    .locals 2

    .line 240
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    .line 241
    const-string v1, "UpdateCheckedDate"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 244
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static getDialogTitle(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 680
    const-string/jumbo p0, "string.dic_update_title"

    :goto_0
    invoke-static {p0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string/jumbo p0, "string.dic_download_title"

    goto :goto_0
.end method

.method public static getDownloadStartMessage(Z)I
    .locals 0

    if-eqz p0, :cond_0

    .line 683
    const-string/jumbo p0, "string.dic_update_start_msg"

    :goto_0
    invoke-static {p0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string/jumbo p0, "string.dic_download_start_msg"

    goto :goto_0
.end method

.method public static getUpdateInfo(Landroid/content/Context;Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->shouldUpdateCheck(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getUpdateInfoFromPreference(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 260
    invoke-static {p0, v0, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->checkUpdateAsync(Landroid/content/Context;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method private static getUpdateInfoFromPreference(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 501
    const-string v0, "UpdateDic:"

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 503
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 505
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 506
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 507
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 508
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 511
    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 515
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static isUpdate(Landroid/content/Context;Ljava/util/LinkedHashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 272
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 273
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object p0

    .line 274
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method public static loadUpdateInfo(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-static {p0, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->loadUpdateInfo(Landroid/content/Context;Z)V

    return-void
.end method

.method public static loadUpdateInfo(Landroid/content/Context;Z)V
    .locals 1

    .line 215
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->shouldUpdateCheck(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 216
    invoke-static {p0, p1, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->checkUpdateAsync(Landroid/content/Context;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)Ljava/util/LinkedHashMap;

    return-void
.end method

.method private performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;Ljava/util/LinkedHashMap;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$1;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    invoke-static {p2, p3, p4, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showNoUpdateMsg(Landroid/content/Context;ZZLandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->size()I

    move-result p4

    if-lez p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->isUpdate(Landroid/content/Context;Ljava/util/LinkedHashMap;)Z

    move-result v4

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$2;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    invoke-static {p2, p3, p4, v4, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showOfflineMsg(Landroid/content/Context;ZZZLandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 157
    :cond_3
    new-instance v1, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;Ljava/util/LinkedHashMap;ZZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showDownloadSelectDialog(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static saveUpdateInfo(Ljava/util/Map;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 473
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 474
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 475
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 476
    const-string v2, "UpdateCheckedDate"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 479
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UpdateDic:"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 484
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 485
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 489
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 491
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static shouldUpdateCheck(Landroid/content/Context;)Z
    .locals 5

    .line 225
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 226
    const-string v0, "UpdateCheckedDate"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 228
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 230
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 231
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 232
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static showConfirmMsg(Landroid/content/Context;Ljava/lang/String;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 7

    .line 597
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 598
    invoke-static {p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getDialogTitle(Z)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 599
    new-instance v5, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$7;

    invoke-direct {v5, p3}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$7;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    .line 607
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p0

    new-instance v1, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$8;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 618
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static showDownloadSelectDialog(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .line 629
    new-instance v7, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$9;

    invoke-direct {v7, p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$9;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    .line 637
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getDialogTitle(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getDownloadStartMessage(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 639
    const-string/jumbo p1, "string.dic_download_msg"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 640
    const-string/jumbo p1, "string.dic_download_later_msg"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 642
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 645
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;

    move-object v8, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$10;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 676
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static showNoUpdateMsg(Landroid/content/Context;ZZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    .line 524
    invoke-interface {p3, v0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 529
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "string.dic_update_title"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v2, "string.dic_noupdate_msg"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 535
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;

    invoke-direct {v0, p2, p0, v1, p3}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$5;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 540
    :cond_1
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isKindle()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 541
    invoke-static {p0, v1, p3}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->showConfirmMsg(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 543
    invoke-interface {p3, v0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 546
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static showOfflineMsg(Landroid/content/Context;ZZZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-eqz p4, :cond_3

    .line 564
    invoke-interface {p4, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 569
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 571
    :try_start_0
    invoke-static {p3}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getDialogTitle(Z)I

    move-result p3

    if-eqz p1, :cond_1

    .line 573
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p0

    new-instance p2, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;

    invoke-direct {p2, p1, p3, p4}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$6;-><init>(Landroidx/fragment/app/FragmentActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 578
    :cond_1
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isKindle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo p2, "string.purchase_dialog_msg_offline"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 581
    invoke-static {p0, p1, p4}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->showConfirmMsg(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 583
    invoke-interface {p4, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 586
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public dictionaryUpdateCheckOnPurchaseOperation(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;ZZZ)V

    return-void
.end method

.method public dictionaryUpdateCheckOnStartup(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;ZZZ)V

    return-void
.end method

.method public dictionaryUpdateCheckOnUserOperation(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;ZZZ)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;ZZZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->shouldUpdateCheck(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getUpdateInfoFromPreference(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object p4

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->checkUpdateAsync(Landroid/content/Context;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)Ljava/util/LinkedHashMap;

    move-result-object p4

    .line 100
    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;Ljava/util/LinkedHashMap;ZZ)V

    return-void
.end method
