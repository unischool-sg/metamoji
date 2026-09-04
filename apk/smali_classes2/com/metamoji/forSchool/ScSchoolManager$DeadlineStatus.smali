.class public final enum Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;
.super Ljava/lang/Enum;
.source "ScSchoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ScSchoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeadlineStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

.field public static final enum END:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

.field public static final enum NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

.field public static final enum OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

.field public static final enum PREVSTART:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

.field public static final enum RUNNING:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;
    .locals 5

    .line 73
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->PREVSTART:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->RUNNING:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    sget-object v4, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->END:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 75
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    const-string v1, "OFFLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 76
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    const-string v1, "PREVSTART"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->PREVSTART:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 77
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    const-string v1, "RUNNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->RUNNING:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 78
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    const-string v1, "END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->END:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 73
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->$values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->$VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

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

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 73
    const-class v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;
    .locals 1

    .line 73
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->$VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    invoke-virtual {v0}, [Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    return-object v0
.end method
