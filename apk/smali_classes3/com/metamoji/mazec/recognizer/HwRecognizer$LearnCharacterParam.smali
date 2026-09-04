.class public Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;
.super Ljava/lang/Object;
.source "HwRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/recognizer/HwRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LearnCharacterParam"
.end annotation


# instance fields
.field private mCharacter:Ljava/lang/String;

.field private mDeviceTag:Ljava/lang/String;

.field private mLearningType:I

.field private mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/mazec/stroke/HwStrokes;ILjava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mCharacter:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 135
    iput p3, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mLearningType:I

    .line 136
    iput-object p4, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mDeviceTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mCharacter:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTag()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mDeviceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLearningType()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mLearningType:I

    return v0
.end method

.method public getStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "character:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mCharacter:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v1, "strokes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "learningType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mLearningType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "deviceTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->mDeviceTag:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
