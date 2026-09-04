.class public final enum Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;
.super Ljava/lang/Enum;
.source "UnScheduleUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnScheduleUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

.field public static final enum MONTHLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

.field public static final enum WEEKLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

.field public static final enum YEARLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;
    .locals 3

    .line 37
    sget-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->MONTHLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    sget-object v1, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->YEARLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    sget-object v2, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->WEEKLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    const-string v1, "MONTHLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->MONTHLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    new-instance v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    const-string v1, "YEARLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->YEARLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    new-instance v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    const-string v1, "WEEKLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->WEEKLY:Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    .line 37
    invoke-static {}, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->$values()[Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->$VALUES:[Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    const-class v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;
    .locals 1

    .line 37
    sget-object v0, Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->$VALUES:[Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnScheduleUnit$CAL_TYPE;

    return-object v0
.end method
