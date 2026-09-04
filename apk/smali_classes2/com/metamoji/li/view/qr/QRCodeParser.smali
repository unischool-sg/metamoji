.class public final Lcom/metamoji/li/view/qr/QRCodeParser;
.super Ljava/lang/Object;
.source "QRCodeParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/li/view/qr/QRCodeParser;",
        "",
        "<init>",
        "()V",
        "SEPARATOR_KEY",
        "",
        "SEPARATOR_PARAM",
        "QRCODE_KEY_COID",
        "QRCODE_KEY_USERID",
        "QRCODE_KEY_PASSWORD",
        "QRCODE_KEY_QWD",
        "QRCODE_KEY_ROOTSERVER",
        "s_regexValue",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "parseParameter",
        "",
        "str",
        "separator",
        "parseQRCode",
        "Lcom/metamoji/li/model/LoginParams;",
        "checkParams",
        "Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;",
        "loginParams",
        "QRParamStatus",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/li/view/qr/QRCodeParser;

.field private static final QRCODE_KEY_COID:Ljava/lang/String; = "cid"

.field private static final QRCODE_KEY_PASSWORD:Ljava/lang/String; = "pwd"

.field private static final QRCODE_KEY_QWD:Ljava/lang/String; = "qwd"

.field private static final QRCODE_KEY_ROOTSERVER:Ljava/lang/String; = "rootServer"

.field private static final QRCODE_KEY_USERID:Ljava/lang/String; = "uid"

.field private static final SEPARATOR_KEY:Ljava/lang/String; = "$"

.field private static final SEPARATOR_PARAM:Ljava/lang/String; = ","

.field private static final s_regexValue:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/li/view/qr/QRCodeParser;

    invoke-direct {v0}, Lcom/metamoji/li/view/qr/QRCodeParser;-><init>()V

    sput-object v0, Lcom/metamoji/li/view/qr/QRCodeParser;->INSTANCE:Lcom/metamoji/li/view/qr/QRCodeParser;

    .line 20
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/qr/QRCodeParser;->s_regexValue:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final parseParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 29
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 30
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    sget-object v3, Lcom/metamoji/li/view/qr/QRCodeParser;->s_regexValue:Ljava/util/regex/Pattern;

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v3

    .line 34
    array-length v4, v3

    if-ge v4, v5, :cond_0

    .line 36
    const-string v1, "SKIP : no value..."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "substring(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    aget-object v3, v3, v2

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final checkParams(Lcom/metamoji/li/model/LoginParams;)Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;
    .locals 1

    const-string v0, "loginParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getCoLoginId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getLoginName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getHasQwd()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    sget-object p1, Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;->COMPLETION:Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;

    return-object p1

    .line 92
    :cond_2
    :goto_0
    sget-object p1, Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;->PARTIAL:Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;

    return-object p1

    .line 87
    :cond_3
    :goto_1
    sget-object p1, Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;->NO_DATA:Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;

    return-object p1
.end method

.method public final parseQRCode(Ljava/lang/String;)Lcom/metamoji/li/model/LoginParams;
    .locals 5

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/metamoji/li/model/LoginParams;->Companion:Lcom/metamoji/li/model/LoginParams$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams$Companion;->getEmpty()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "$"

    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "substring(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    const-string v1, ","

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/metamoji/li/view/qr/QRCodeParser;->parseParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    const-string v4, "cid"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    sget-object v2, Lcom/metamoji/li/LoginUtils;->INSTANCE:Lcom/metamoji/li/LoginUtils;

    invoke-virtual {v2, v3}, Lcom/metamoji/li/LoginUtils;->getRootServerUrlAndCoLoginIdFromUrl(Ljava/lang/String;)Lcom/metamoji/li/dialog/CompanyInfo;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/metamoji/li/dialog/CompanyInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/li/model/LoginParams;->setCoLoginId(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Lcom/metamoji/li/dialog/CompanyInfo;->getRootServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/li/model/LoginParams;->setRootServer(Ljava/lang/String;)V

    .line 62
    sget-object v3, Lcom/metamoji/li/LoginUtils;->INSTANCE:Lcom/metamoji/li/LoginUtils;

    invoke-virtual {v2}, Lcom/metamoji/li/dialog/CompanyInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/metamoji/li/dialog/CompanyInfo;->getRootServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/li/LoginUtils;->companyNameByLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/li/model/LoginParams;->setCoName(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_3
    const-string v4, "uid"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    invoke-virtual {v0, v3}, Lcom/metamoji/li/model/LoginParams;->setLoginName(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_4
    const-string v4, "pwd"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams;->getCoName()Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_5
    const-string v4, "qwd"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 68
    invoke-virtual {v0, v3}, Lcom/metamoji/li/model/LoginParams;->setQwd(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_6
    const-string v4, "rootServer"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v2, :cond_1

    .line 72
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    .line 73
    const-string v4, "DevDigitalCabinetRootServer"

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-object v0
.end method
