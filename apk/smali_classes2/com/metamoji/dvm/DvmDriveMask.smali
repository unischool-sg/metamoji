.class public final enum Lcom/metamoji/dvm/DvmDriveMask;
.super Ljava/lang/Enum;
.source "DvmDriveMask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/dvm/DvmDriveMask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/dvm/DvmDriveMask;

.field public static final enum Grouping:Lcom/metamoji/dvm/DvmDriveMask;

.field public static final enum None:Lcom/metamoji/dvm/DvmDriveMask;

.field public static final enum NotGrouping:Lcom/metamoji/dvm/DvmDriveMask;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/dvm/DvmDriveMask;
    .locals 3

    .line 4
    sget-object v0, Lcom/metamoji/dvm/DvmDriveMask;->None:Lcom/metamoji/dvm/DvmDriveMask;

    sget-object v1, Lcom/metamoji/dvm/DvmDriveMask;->Grouping:Lcom/metamoji/dvm/DvmDriveMask;

    sget-object v2, Lcom/metamoji/dvm/DvmDriveMask;->NotGrouping:Lcom/metamoji/dvm/DvmDriveMask;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/dvm/DvmDriveMask;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/metamoji/dvm/DvmDriveMask;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDriveMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDriveMask;->None:Lcom/metamoji/dvm/DvmDriveMask;

    .line 6
    new-instance v0, Lcom/metamoji/dvm/DvmDriveMask;

    const-string v1, "Grouping"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDriveMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDriveMask;->Grouping:Lcom/metamoji/dvm/DvmDriveMask;

    .line 7
    new-instance v0, Lcom/metamoji/dvm/DvmDriveMask;

    const-string v1, "NotGrouping"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDriveMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDriveMask;->NotGrouping:Lcom/metamoji/dvm/DvmDriveMask;

    .line 4
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveMask;->$values()[Lcom/metamoji/dvm/DvmDriveMask;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dvm/DvmDriveMask;->$VALUES:[Lcom/metamoji/dvm/DvmDriveMask;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/dvm/DvmDriveMask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lcom/metamoji/dvm/DvmDriveMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dvm/DvmDriveMask;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/dvm/DvmDriveMask;
    .locals 1

    .line 4
    sget-object v0, Lcom/metamoji/dvm/DvmDriveMask;->$VALUES:[Lcom/metamoji/dvm/DvmDriveMask;

    invoke-virtual {v0}, [Lcom/metamoji/dvm/DvmDriveMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/dvm/DvmDriveMask;

    return-object v0
.end method
