.class public final enum Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;
.super Ljava/lang/Enum;
.source "UnSurveyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnSurveyRollType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

.field public static final enum Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

.field public static final enum Teacher:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;
    .locals 2

    .line 68
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Teacher:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    const-string v1, "Teacher"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Teacher:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 70
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    const-string v1, "Student"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 68
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->$values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->$VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

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

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 68
    const-class v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;
    .locals 1

    .line 68
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->$VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    invoke-virtual {v0}, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    return-object v0
.end method
