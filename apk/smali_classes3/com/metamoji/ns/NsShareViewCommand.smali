.class public Lcom/metamoji/ns/NsShareViewCommand;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/NsShareViewCommand$PRIVATEFLAG;
    }
.end annotation


# static fields
.field public static final NSSV_ROOMDIC_KEY_ACTIVELOGIN:Ljava/lang/String; = "activeLogin"

.field public static final NSSV_ROOMDIC_KEY_CREATEDATE:Ljava/lang/String; = "createDate"

.field public static final NSSV_ROOMDIC_KEY_DOCUMENTLIST:Ljava/lang/String; = "documentList"

.field public static final NSSV_ROOMDIC_KEY_HASPASSWORD:Ljava/lang/String; = "hasPassword"

.field public static final NSSV_ROOMDIC_KEY_ISOWNER:Ljava/lang/String; = "isOwner"

.field public static final NSSV_ROOMDIC_KEY_LASTMODIFYTIME:Ljava/lang/String; = "lastModifyTime"

.field public static final NSSV_ROOMDIC_KEY_LASTSEQUENCE:Ljava/lang/String; = "lastSequence"

.field public static final NSSV_ROOMDIC_KEY_OPENDATE:Ljava/lang/String; = "openDate"

.field public static final NSSV_ROOMDIC_KEY_OWNERNAME:Ljava/lang/String; = "ownerName"

.field public static final NSSV_ROOMDIC_KEY_PINNED:Ljava/lang/String; = "UpdateDicKey_Pinned"

.field public static final NSSV_ROOMDIC_KEY_PRIVATEFLAG:Ljava/lang/String; = "privateFlag"

.field public static final NSSV_ROOMDIC_KEY_ROOMID:Ljava/lang/String; = "roomId"

.field public static final NSSV_ROOMDIC_KEY_ROOMMODE:Ljava/lang/String; = "roomMode"

.field public static final NSSV_ROOMDIC_KEY_ROOMTYPE:Ljava/lang/String; = "roomType"

.field public static final NSSV_ROOMDIC_KEY_SAVESIZE:Ljava/lang/String; = "saveSize"

.field public static final NSSV_ROOMDIC_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NSSV_ROOMDIC_KEY_TRAFFIC:Ljava/lang/String; = "traffic"

.field public static final NSSV_SEARCHCOND_KEY_NOTUSEOPENDATE:Ljava/lang/String; = "includeNotUseOpenDate"

.field public static final NSSV_SEARCHCOND_KEY_OPENDATE_END:Ljava/lang/String; = "endOpenDate"

.field public static final NSSV_SEARCHCOND_KEY_OPENDATE_START:Ljava/lang/String; = "startOpenDate"

.field public static final NSSV_SHARENOTEDIC_KEY_CONTENTSATTRIBUTE:Ljava/lang/String; = "contentsAttribute"

.field public static final NSSV_SHARENOTEDIC_KEY_DOCUMENTID:Ljava/lang/String; = "documentId"

.field public static final NSSV_SHARENOTEDIC_KEY_DRIVEID:Ljava/lang/String; = "driveId"

.field public static final NSSV_SHARENOTEDIC_KEY_LASTSEQUENCE:Ljava/lang/String; = "lastSequence"

.field public static final NSSV_SHARENOTEDIC_KEY_ROOMID:Ljava/lang/String; = "roomId"

.field public static final NSSV_SORTCOND_KEY_PINNED:Ljava/lang/String; = "Pinned"

.field static s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 509
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 510
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 512
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 514
    const-string v0, "NsShareViewCommand.Base64decode"

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 517
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 525
    const-string v0, "UTF-8"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 527
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 528
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 530
    const-string v0, "NsShareViewCommand.Base64encode"

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 533
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static changeRoomMode(Ljava/lang/String;Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;IILcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
    .locals 2

    .line 358
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 359
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    if-eqz p4, :cond_0

    .line 361
    invoke-interface {p4, v1, p1}, Lcom/metamoji/ns/INsShareViewCommandCompletionAction;->onCompleted(ZLjava/util/Map;)V

    :cond_0
    return-void

    .line 366
    :cond_1
    new-instance p2, Lcom/metamoji/ns/NsShareViewCommand$4;

    invoke-direct {p2, p4, p0, p1}, Lcom/metamoji/ns/NsShareViewCommand$4;-><init>(Lcom/metamoji/ns/INsShareViewCommandCompletionAction;Ljava/lang/String;Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;)V

    invoke-static {p3, v1, p2, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static clearHoursDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    .line 438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 439
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 440
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 p0, 0x2

    .line 441
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 p0, 0x5

    .line 442
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 443
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    .line 444
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->clear(I)V

    .line 445
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    .line 453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 454
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 455
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 p0, 0x2

    .line 456
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 p0, 0x5

    .line 457
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 p0, 0xb

    .line 458
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 p0, 0xc

    .line 459
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    .line 460
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    .line 461
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->clear(I)V

    .line 462
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static convertDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4

    if-eqz p0, :cond_0

    .line 496
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const-wide/16 v2, 0x3e8

    .line 498
    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertDateFromDate(Ljava/util/Date;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 492
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static createLocalDateTime(IIIII)Ljava/util/Date;
    .locals 7

    .line 427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 428
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    .line 429
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->clear(I)V

    .line 430
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static createSortParam(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 208
    const-string p1, "DESC"

    goto :goto_0

    :cond_0
    const-string p1, "ASC"

    :goto_0
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 207
    const-string/jumbo p1, "{ \"orderBy\":\"%s\", \"direction\":\"%s\" }"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDocInfo(Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-static {p0}, Lcom/metamoji/ns/NsShareViewCommand;->getDocumentList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 554
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 560
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "driveId"

    const-string v7, "documentId"

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 561
    instance-of v8, v5, Ljava/util/Map;

    if-eqz v8, :cond_1

    .line 562
    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz p1, :cond_2

    if-eqz v6, :cond_1

    .line 563
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 566
    :cond_2
    const-string v8, "lastSequence"

    invoke-static {v5, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    const-wide/16 v9, -0x1

    .line 568
    invoke-static {v8, v9, v10}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    if-eqz v4, :cond_3

    .line 569
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 571
    :cond_3
    invoke-static {v5, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 573
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_4

    .line 575
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    .line 577
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v4, v8

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    .line 587
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 596
    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v1

    :cond_7
    return-object v0
.end method

.method public static getDocumentList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 538
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 540
    check-cast p0, Ljava/util/Map;

    const-string v0, "documentList"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEntry(Ljava/lang/Object;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 665
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 667
    check-cast p0, Ljava/util/Map;

    const-string v0, "activeLogin"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 669
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHasPassword(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 809
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 811
    check-cast p0, Ljava/util/Map;

    const-string v0, "hasPassword"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 813
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getIsOwner(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 725
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 727
    check-cast p0, Ljava/util/Map;

    const-string v0, "isOwner"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 729
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getIsReadOnly(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 738
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 740
    check-cast p0, Ljava/util/Map;

    const-string/jumbo v1, "roomMode"

    invoke-static {p0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 742
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->READONLY:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    invoke-virtual {v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static getOpenDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1

    if-eqz p0, :cond_0

    .line 639
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 641
    check-cast p0, Ljava/util/Map;

    const-string v0, "openDate"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 643
    invoke-static {p0}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOwnerName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 652
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 654
    check-cast p0, Ljava/util/Map;

    const-string v0, "ownerName"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 656
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ns/NsShareViewCommand;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPinned(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 712
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 714
    check-cast p0, Ljava/util/Map;

    const-string v0, "privateFlag"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 716
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getRoomId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 699
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 701
    check-cast p0, Ljava/util/Map;

    const-string/jumbo v0, "roomId"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 703
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareViewList(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p0}, Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;->onCompleted(ZLjava/util/List;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsShareViewCommand$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/metamoji/ns/NsShareViewCommand$1;-><init>(Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;Ljava/util/Map;Ljava/util/List;)V

    .line 196
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static getTitle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 678
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 680
    check-cast p0, Ljava/util/Map;

    const-string/jumbo v0, "title"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 682
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ns/NsShareViewCommand;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUpdate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1

    if-eqz p0, :cond_0

    .line 626
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 628
    check-cast p0, Ljava/util/Map;

    const-string v0, "lastModifyTime"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 630
    invoke-static {p0}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleCollaboDisableWriteAccess(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
    .locals 3

    .line 343
    sget-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->READONLY:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    sget v1, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Disable_WriteAccess:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_For_ReadOnly:I

    invoke-static {p0, v0, v1, v2, p1}, Lcom/metamoji/ns/NsShareViewCommand;->changeRoomMode(Ljava/lang/String;Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;IILcom/metamoji/ns/INsShareViewCommandCompletionAction;)V

    return-void
.end method

.method public static handleCollaboEnableWriteAccess(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
    .locals 3

    .line 353
    sget-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->FREE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    sget v1, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Enable_WriteAccess:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_For_Free:I

    invoke-static {p0, v0, v1, v2, p1}, Lcom/metamoji/ns/NsShareViewCommand;->changeRoomMode(Ljava/lang/String;Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;IILcom/metamoji/ns/INsShareViewCommandCompletionAction;)V

    return-void
.end method

.method public static handleCollaboRoomEdit()V
    .locals 2

    .line 284
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsShareViewCommand;->handleCollaboRoomEdit(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V

    return-void
.end method

.method public static handleCollaboRoomEdit(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
    .locals 1

    .line 253
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    sget p1, Lcom/metamoji/noteanytime/R$string;->ShareView_Menu_RoomInfo:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsShareViewCommand$3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsShareViewCommand$3;-><init>(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V

    .line 277
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static handleCollaboRoomEdit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
    .locals 1

    .line 224
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;-><init>()V

    .line 225
    iput-object p0, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_roomId:Ljava/lang/String;

    .line 226
    iput-object p1, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_title:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 227
    :goto_0
    iput-boolean p0, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_hasDate:Z

    if-eqz p2, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-static {p0}, Lcom/metamoji/ns/NsShareViewCommand;->clearHoursDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    :goto_1
    iput-object p2, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    .line 234
    iput-object p3, v0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    .line 236
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/ns/NsShareViewCommand$2;

    invoke-direct {p1, v0}, Lcom/metamoji/ns/NsShareViewCommand$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static handleCollaboSetPinned(Ljava/lang/String;ZLcom/metamoji/ns/INsShareViewCommandCompletionAction;)V
    .locals 0

    return-void
.end method

.method public static handleCollaboShareNotePath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static hasChange(Ljava/lang/Object;)Z
    .locals 10

    if-eqz p0, :cond_3

    .line 751
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 753
    check-cast p0, Ljava/util/Map;

    const-string v0, "documentList"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-wide/16 v1, -0x1

    .line 756
    const-string v3, "lastSequence"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 757
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 758
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 759
    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 761
    invoke-static {v5, v1, v2}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-eqz v4, :cond_1

    .line 762
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    :cond_1
    move-object v4, v5

    goto :goto_0

    .line 770
    :cond_2
    invoke-static {p0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 772
    invoke-static {p0, v1, v2}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 773
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isEqualDocId(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 604
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 606
    check-cast p0, Ljava/util/Map;

    const-string v0, "documentList"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 608
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 609
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 610
    check-cast v0, Ljava/util/Map;

    const-string v1, "lastSequence"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 611
    const-string v1, "documentId"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 612
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isProtected(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 785
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 787
    check-cast p0, Ljava/util/Map;

    const-string v0, "documentList"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 789
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 790
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 791
    check-cast v0, Ljava/util/Map;

    const-string v1, "lastSequence"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 792
    const-string v1, "documentId"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 793
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    const-string v1, "contentsAttribute"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static roundMinutesDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    if-nez p0, :cond_0

    return-object p0

    .line 473
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 474
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xa

    const/4 v1, 0x1

    .line 476
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 p0, 0x2

    .line 479
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 p0, 0x5

    .line 480
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 p0, 0xb

    .line 481
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 482
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    .line 483
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->clear(I)V

    .line 484
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setTitle(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 690
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 692
    check-cast p0, Ljava/util/Map;

    const-string/jumbo v0, "title"

    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
