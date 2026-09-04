.class public final enum Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;
.super Ljava/lang/Enum;
.source "UnSurveyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnSurveyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

.field public static final enum CheckBox:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

.field public static final enum RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;
    .locals 2

    .line 56
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->CheckBox:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    const-string v1, "RadioButton"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 58
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    const-string v1, "CheckBox"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->CheckBox:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 56
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->$values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->$VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 56
    const-class v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;
    .locals 1

    .line 56
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->$VALUES:[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-virtual {v0}, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    return-object v0
.end method
