.class public Lcom/metamoji/un/survey/UnSurveyUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnSurveyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelDef"
.end annotation


# static fields
.field public static final ALLOW_ANSWER:Ljava/lang/String; = "allowAnswer"

.field public static final ALLOW_TEACHER_ANSWER:Ljava/lang/String; = "allowTeacherAnswer"

.field public static final ANSWER:Ljava/lang/String; = "answer"

.field public static final CHOICES:Ljava/lang/String; = "choices"

.field public static final GRAPH_TYPE:Ljava/lang/String; = "graphType"

.field public static final ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final ITEM_NAME:Ljava/lang/String; = "itemName"

.field public static final PUBLISH_RESULT:Ljava/lang/String; = "publish"

.field public static final QUESTION:Ljava/lang/String; = "question"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final ROLL:Ljava/lang/String; = "roll"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER_ID:Ljava/lang/String; = "userId"

.field public static final USER_NAME:Ljava/lang/String; = "userName"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VERSION_1:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
