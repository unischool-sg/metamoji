.class final enum Lcom/metamoji/df/controller/DfPageController$WaStatus;
.super Ljava/lang/Enum;
.source "DfPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/DfPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/controller/DfPageController$WaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/controller/DfPageController$WaStatus;

.field public static final enum STATUS_NEEDSCROLL:Lcom/metamoji/df/controller/DfPageController$WaStatus;

.field public static final enum STATUS_NOCHANGE:Lcom/metamoji/df/controller/DfPageController$WaStatus;

.field public static final enum STATUS_WORKAREAEXPAND:Lcom/metamoji/df/controller/DfPageController$WaStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/controller/DfPageController$WaStatus;
    .locals 3

    .line 44
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NOCHANGE:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_WORKAREAEXPAND:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    sget-object v2, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NEEDSCROLL:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/df/controller/DfPageController$WaStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;

    const-string v1, "STATUS_NOCHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NOCHANGE:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    .line 46
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;

    const-string v1, "STATUS_WORKAREAEXPAND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_WORKAREAEXPAND:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    .line 47
    new-instance v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;

    const-string v1, "STATUS_NEEDSCROLL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/DfPageController$WaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->STATUS_NEEDSCROLL:Lcom/metamoji/df/controller/DfPageController$WaStatus;

    .line 44
    invoke-static {}, Lcom/metamoji/df/controller/DfPageController$WaStatus;->$values()[Lcom/metamoji/df/controller/DfPageController$WaStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->$VALUES:[Lcom/metamoji/df/controller/DfPageController$WaStatus;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/controller/DfPageController$WaStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 44
    const-class v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/controller/DfPageController$WaStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/controller/DfPageController$WaStatus;
    .locals 1

    .line 44
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaStatus;->$VALUES:[Lcom/metamoji/df/controller/DfPageController$WaStatus;

    invoke-virtual {v0}, [Lcom/metamoji/df/controller/DfPageController$WaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/controller/DfPageController$WaStatus;

    return-object v0
.end method
