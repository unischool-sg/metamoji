.class public final enum Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;
.super Ljava/lang/Enum;
.source "ScSchoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ScSchoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScoreStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

.field public static final enum NONE:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

.field public static final enum NOTREPORT:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

.field public static final enum REPORTED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

.field public static final enum SCORED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;
    .locals 4

    .line 95
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NOTREPORT:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->REPORTED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->SCORED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 97
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    const-string v1, "NOTREPORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NOTREPORT:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 98
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    const-string v1, "REPORTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->REPORTED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 99
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    const-string v1, "SCORED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->SCORED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 95
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->$values()[Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->$VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

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

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 95
    const-class v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;
    .locals 1

    .line 95
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->$VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-virtual {v0}, [Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    return-object v0
.end method
