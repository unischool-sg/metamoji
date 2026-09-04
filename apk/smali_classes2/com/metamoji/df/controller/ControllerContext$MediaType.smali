.class public final enum Lcom/metamoji/df/controller/ControllerContext$MediaType;
.super Ljava/lang/Enum;
.source "ControllerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/ControllerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/controller/ControllerContext$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field public static final enum MEDIATYPE_DETAILWINDOW:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field public static final enum MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field public static final enum MEDIATYPE_PRINT:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field public static final enum MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/controller/ControllerContext$MediaType;
    .locals 4

    .line 16
    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_PRINT:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v3, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_DETAILWINDOW:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;

    const-string v1, "MEDIATYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/ControllerContext$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 18
    new-instance v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;

    const-string v1, "MEDIATYPE_PRINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/ControllerContext$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_PRINT:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 19
    new-instance v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;

    const-string v1, "MEDIATYPE_THUMBNAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/ControllerContext$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 20
    new-instance v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;

    const-string v1, "MEDIATYPE_DETAILWINDOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/ControllerContext$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_DETAILWINDOW:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 16
    invoke-static {}, Lcom/metamoji/df/controller/ControllerContext$MediaType;->$values()[Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->$VALUES:[Lcom/metamoji/df/controller/ControllerContext$MediaType;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/controller/ControllerContext$MediaType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    const-class v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/controller/ControllerContext$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/controller/ControllerContext$MediaType;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->$VALUES:[Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {v0}, [Lcom/metamoji/df/controller/ControllerContext$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/controller/ControllerContext$MediaType;

    return-object v0
.end method
