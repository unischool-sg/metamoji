.class public final enum Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;
.super Ljava/lang/Enum;
.source "UnSurveyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnSurveyGraphType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

.field public static final enum BarChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

.field public static final enum PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

.field public static final enum SpecTable:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

.field public static final enum Table:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;
    .locals 4

    .line 61
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->BarChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->Table:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->SpecTable:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    const-string v1, "PieChart"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 63
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    const-string v1, "BarChart"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->BarChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 64
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    const-string v1, "Table"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->Table:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 65
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    const-string v1, "SpecTable"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->SpecTable:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 61
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->$values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->$VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

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

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    const-class v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;
    .locals 1

    .line 61
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->$VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-virtual {v0}, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    return-object v0
.end method
