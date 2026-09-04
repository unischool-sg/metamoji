.class Lcom/metamoji/un/survey/UnSurveyUnit$UndoModelDef;
.super Ljava/lang/Object;
.source "UnSurveyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UndoModelDef"
.end annotation


# static fields
.field public static final ANSWER_UNDO_NEW_ANSWER:Ljava/lang/String; = "na"

.field public static final ANSWER_UNDO_NEW_ROLL:Ljava/lang/String; = "nr"

.field public static final ANSWER_UNDO_NEW_USER_ID:Ljava/lang/String; = "nu"

.field public static final ANSWER_UNDO_NEW_USER_NAME:Ljava/lang/String; = "nn"

.field public static final ANSWER_UNDO_OLD_ANSWER:Ljava/lang/String; = "oa"

.field public static final ANSWER_UNDO_OLD_ROLL:Ljava/lang/String; = "or"

.field public static final ANSWER_UNDO_OLD_USER_ID:Ljava/lang/String; = "ou"

.field public static final ANSWER_UNDO_OLD_USER_NAME:Ljava/lang/String; = "on"

.field public static final MODELTYPE_GEOPROP:Ljava/lang/String; = "surveyUnitGeopropUndo"

.field public static final MODELTYPE_SURVEY_UNIT:Ljava/lang/String; = "surveyUnitUndo"

.field public static final MODELTYPE_SURVEY_UNIT_ANSWER_UNDO:Ljava/lang/String; = "surveyUnitAnswer"

.field public static final MODELTYPE_SURVEY_UNIT_RESULT_UNDO:Ljava/lang/String; = "surveyUnitResult"

.field public static final MODELTYPE_SURVEY_UNIT_SETTINGS_UNDO:Ljava/lang/String; = "surveyUnitSettings"

.field public static final NEW_VALUE:Ljava/lang/String; = "nv"

.field public static final OLD_VALUE:Ljava/lang/String; = "ov"

.field public static final RESULT_UNDO_NEW_VALUE:Ljava/lang/String; = "nr"

.field public static final RESULT_UNDO_OLD_VALUE:Ljava/lang/String; = "or"

.field public static final SETTINGS_UNDO_NEW_VALUE:Ljava/lang/String; = "ns"

.field public static final SETTINGS_UNDO_OLD_VALUE:Ljava/lang/String; = "os"

.field public static final VERSION_LATEST_ANSWER:I = 0x1

.field public static final VERSION_LATEST_GEOPROP:I = 0x1

.field public static final VERSION_LATEST_RESULT:I = 0x1

.field public static final VERSION_LATEST_SETTINGS:I = 0x1

.field public static final VERSION_LATEST_SURVEY_UNIT:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
