.class public Lcom/metamoji/un/text/util/NtAuthorInfoUtil;
.super Ljava/lang/Object;
.source "NtAuthorInfoUtil.java"


# static fields
.field private static MMJNT_AUTHORINFO_SERIALIZE_COMPATIBILITYVER_CURRENT:I = 0x1

.field private static MMJNT_AUTHORINFO_SERIALIZE_COMPATIBILITYVER_INITIAL:I = 0x1

.field public static UNDODATAKEY_PLIST_AI_ACTIONTIME:Ljava/lang/String; = "authorInfoActionTime"

.field public static UNDODATAKEY_PLIST_AI_ROOMID:Ljava/lang/String; = "authorInfoRoomId"

.field public static UNDODATAKEY_PLIST_AI_USERID:Ljava/lang/String; = "authorInfoUserId"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeToJSONDictionary(Lcom/metamoji/nt/NtAuthorInfo;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtAuthorInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_USERID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getRoomId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    sget-object v1, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ROOMID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    sget-object v1, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ACTIONTIME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTimeInUnixTimestamp()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static init(Lcom/metamoji/nt/NtAuthorInfo;Ljava/util/Map;)Lcom/metamoji/nt/NtAuthorInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtAuthorInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/nt/NtAuthorInfo;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_USERID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtAuthorInfo;->setUserId(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ROOMID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtAuthorInfo;->setRoomId(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ACTIONTIME:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setActionTime(D)V

    return-object p0
.end method

.method public static serialize(Lcom/metamoji/nt/NtAuthorInfo;Lcom/metamoji/cm/DataArchiver;)I
    .locals 4

    .line 31
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 36
    sget v0, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->MMJNT_AUTHORINFO_SERIALIZE_COMPATIBILITYVER_CURRENT:I

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v0

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTimeInUnixTimestamp()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat64(D)I

    move-result p0

    add-int/2addr v0, p0

    .line 42
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 44
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    if-lez v0, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v2

    .line 56
    sget v3, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->MMJNT_AUTHORINFO_SERIALIZE_COMPATIBILITYVER_CURRENT:I

    if-ne v3, v2, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtAuthorInfo;->setUserId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtAuthorInfo;->setRoomId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat64()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/nt/NtAuthorInfo;->setActionTime(D)V

    :cond_1
    add-int/2addr v1, v0

    .line 65
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
