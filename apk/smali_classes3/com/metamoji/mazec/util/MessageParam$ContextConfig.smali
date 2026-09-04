.class public Lcom/metamoji/mazec/util/MessageParam$ContextConfig;
.super Ljava/lang/Object;
.source "MessageParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/util/MessageParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextConfig"
.end annotation


# instance fields
.field public final kanjiRecognitionMode:I

.field public final lang:Ljava/lang/String;

.field public final schoolYear:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->lang:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->kanjiRecognitionMode:I

    .line 39
    iput p1, p0, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->schoolYear:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->lang:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->kanjiRecognitionMode:I

    .line 45
    iput p3, p0, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->schoolYear:I

    return-void
.end method
