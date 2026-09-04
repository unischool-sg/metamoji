.class public final enum Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
.super Ljava/lang/Enum;
.source "ScSchoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ScSchoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeadlineMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public static final enum DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public static final enum FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public static final enum READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
    .locals 3

    .line 82
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 83
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const-string v1, "FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 84
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const-string v1, "DONTSEE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 85
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const-string v1, "READONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 82
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->$values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->$VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 82
    const-class v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
    .locals 1

    .line 82
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->$VALUES:[Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {v0}, [Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-object v0
.end method
