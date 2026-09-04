.class final enum Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;
.super Ljava/lang/Enum;
.source "ScScoreListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ColumnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

.field public static final enum DCUSERNAME:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

.field public static final enum SCORE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

.field public static final enum SCOREDDATE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

.field public static final enum SCOREDDCUSERNAME:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

.field public static final enum SUBMITTEDDATE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;
    .locals 5

    .line 62
    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->DCUSERNAME:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SCORE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SUBMITTEDDATE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    sget-object v3, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SCOREDDCUSERNAME:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    sget-object v4, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SCOREDDATE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    const-string v1, "DCUSERNAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->DCUSERNAME:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    .line 64
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    const-string v1, "SCORE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SCORE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    .line 65
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    const-string v1, "SUBMITTEDDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SUBMITTEDDATE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    .line 66
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    const-string v1, "SCOREDDCUSERNAME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SCOREDDCUSERNAME:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    .line 67
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    const-string v1, "SCOREDDATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->SCOREDDATE:Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    .line 62
    invoke-static {}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->$values()[Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->$VALUES:[Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 62
    const-class v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;
    .locals 1

    .line 62
    sget-object v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->$VALUES:[Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    invoke-virtual {v0}, [Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/forSchool/ui/ScScoreListDialog$ColumnType;

    return-object v0
.end method
