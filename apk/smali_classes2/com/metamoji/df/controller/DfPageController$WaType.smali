.class public final enum Lcom/metamoji/df/controller/DfPageController$WaType;
.super Ljava/lang/Enum;
.source "DfPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/DfPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/controller/DfPageController$WaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/controller/DfPageController$WaType;

.field public static final enum FROM_PAPERSIZE:Lcom/metamoji/df/controller/DfPageController$WaType;

.field public static final enum OFFSET_CENTER:Lcom/metamoji/df/controller/DfPageController$WaType;

.field public static final enum OFFSET_HEAD:Lcom/metamoji/df/controller/DfPageController$WaType;

.field public static final enum OFFSET_PAPER_WIDTH:Lcom/metamoji/df/controller/DfPageController$WaType;

.field public static final enum OFFSET_SAVED:Lcom/metamoji/df/controller/DfPageController$WaType;

.field public static final enum UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/controller/DfPageController$WaType;
    .locals 6

    .line 35
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaType;->FROM_PAPERSIZE:Lcom/metamoji/df/controller/DfPageController$WaType;

    sget-object v2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_SAVED:Lcom/metamoji/df/controller/DfPageController$WaType;

    sget-object v3, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_CENTER:Lcom/metamoji/df/controller/DfPageController$WaType;

    sget-object v4, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_HEAD:Lcom/metamoji/df/controller/DfPageController$WaType;

    sget-object v5, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_PAPER_WIDTH:Lcom/metamoji/df/controller/DfPageController$WaType;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/df/controller/DfPageController$WaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 37
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaType;

    const-string v1, "FROM_PAPERSIZE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->FROM_PAPERSIZE:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 38
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaType;

    const-string v1, "OFFSET_SAVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_SAVED:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 39
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaType;

    const-string v1, "OFFSET_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_CENTER:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 40
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaType;

    const-string v1, "OFFSET_HEAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_HEAD:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 41
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaType;

    const-string v1, "OFFSET_PAPER_WIDTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_PAPER_WIDTH:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 35
    invoke-static {}, Lcom/metamoji/df/controller/DfPageController$WaType;->$values()[Lcom/metamoji/df/controller/DfPageController$WaType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->$VALUES:[Lcom/metamoji/df/controller/DfPageController$WaType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/controller/DfPageController$WaType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcom/metamoji/df/controller/DfPageController$WaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/controller/DfPageController$WaType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/controller/DfPageController$WaType;
    .locals 1

    .line 35
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->$VALUES:[Lcom/metamoji/df/controller/DfPageController$WaType;

    invoke-virtual {v0}, [Lcom/metamoji/df/controller/DfPageController$WaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/controller/DfPageController$WaType;

    return-object v0
.end method
