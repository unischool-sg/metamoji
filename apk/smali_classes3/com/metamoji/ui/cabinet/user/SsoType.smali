.class public final enum Lcom/metamoji/ui/cabinet/user/SsoType;
.super Ljava/lang/Enum;
.source "SsoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/user/SsoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/user/SsoType;

.field public static final enum SSO_TYPE_GOOGLE:Lcom/metamoji/ui/cabinet/user/SsoType;

.field public static final enum SSO_TYPE_MICROSOFT:Lcom/metamoji/ui/cabinet/user/SsoType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/user/SsoType;
    .locals 2

    .line 6
    sget-object v0, Lcom/metamoji/ui/cabinet/user/SsoType;->SSO_TYPE_GOOGLE:Lcom/metamoji/ui/cabinet/user/SsoType;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SsoType;->SSO_TYPE_MICROSOFT:Lcom/metamoji/ui/cabinet/user/SsoType;

    filled-new-array {v0, v1}, [Lcom/metamoji/ui/cabinet/user/SsoType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SsoType;

    const-string v1, "SSO_TYPE_GOOGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SsoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SsoType;->SSO_TYPE_GOOGLE:Lcom/metamoji/ui/cabinet/user/SsoType;

    .line 8
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SsoType;

    const-string v1, "SSO_TYPE_MICROSOFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SsoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SsoType;->SSO_TYPE_MICROSOFT:Lcom/metamoji/ui/cabinet/user/SsoType;

    .line 6
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/SsoType;->$values()[Lcom/metamoji/ui/cabinet/user/SsoType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SsoType;->$VALUES:[Lcom/metamoji/ui/cabinet/user/SsoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SsoType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/metamoji/ui/cabinet/user/SsoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/user/SsoType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/user/SsoType;
    .locals 1

    .line 6
    sget-object v0, Lcom/metamoji/ui/cabinet/user/SsoType;->$VALUES:[Lcom/metamoji/ui/cabinet/user/SsoType;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/user/SsoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/user/SsoType;

    return-object v0
.end method
