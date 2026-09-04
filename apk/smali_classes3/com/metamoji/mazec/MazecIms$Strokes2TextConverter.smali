.class Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Lcom/metamoji/mazec/util/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/MazecIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Strokes2TextConverter"
.end annotation


# instance fields
.field private mRacCtx:Lcom/metamoji/mazec/RACContext;

.field private mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    .line 208
    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRacContext(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/RACContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmLang(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmLang(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->setLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->recognize()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->sendMessage(ILjava/lang/Object;)V

    .line 219
    iput-object v1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public handleMessage(IJLjava/lang/Object;)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 228
    :cond_0
    check-cast p4, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-virtual {p0, p4}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->recognized(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V

    return-void
.end method

.method protected recognize()V
    .locals 9

    .line 264
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->getSplitPosition()Ljava/util/List;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRecogSegmentation(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->getJoinPosition()Ljava/util/List;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    .line 271
    :goto_0
    new-instance v1, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    const/4 v2, 0x0

    .line 272
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/mazec/stroke/HwStrokes;

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmPrefs(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v3}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmLang(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuidelines()[F

    move-result-object v4

    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmLang(Lcom/metamoji/mazec/MazecIms;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v5}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmPrefs(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v5

    .line 275
    invoke-static {v0, v5}, Lcom/metamoji/mazec/util/LocaleUtil;->wordSpaceCoefficientForLanguage(Ljava/lang/String;Lcom/metamoji/mazec/MazecPreferences;)F

    move-result v5

    new-instance v8, Lcom/metamoji/mazec/RACExecContext;

    invoke-direct {v8}, Lcom/metamoji/mazec/RACExecContext;-><init>()V

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;-><init>(Lcom/metamoji/mazec/stroke/HwStrokes;I[FFLjava/util/List;Ljava/util/List;Lcom/metamoji/mazec/RACExecContext;)V

    const/16 v0, 0x35

    .line 280
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected recognized(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;)V
    .locals 4

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getTopCandidateString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 289
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getStrokeBlocks()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->diviededStrokesListByStrokeBlocks(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 294
    new-instance v1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v2}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmClientVer(Lcom/metamoji/mazec/MazecIms;)I

    move-result v2

    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesListToNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;-><init>(ILjava/util/List;)V

    .line 295
    const-string/jumbo p1, "stroke_data"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->this$0:Lcom/metamoji/mazec/MazecIms;

    const-string v1, "com.metamoji.mazecapi.action_reply.convert_strokes"

    invoke-static {p1, v1, v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$mperformPrivateCommand(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 300
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->recognize()V

    :cond_2
    return-void
.end method

.method protected sendMessage(ILjava/lang/Object;)V
    .locals 3

    .line 306
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/metamoji/mazec/util/MessageParam;

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    invoke-direct {v1, v2, p0, p2}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 246
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object v0

    .line 247
    new-instance v4, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;

    invoke-direct {v4, p1}, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/mazec/BackgroundTaskHandler;->createContext(Lcom/metamoji/mazec/util/MessageHandler;Lcom/metamoji/mazec/util/MessageParam$ContextConfig;)Lcom/metamoji/mazec/RACContext;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 251
    :goto_0
    iget-object v4, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mRacCtx:Lcom/metamoji/mazec/RACContext;

    if-eqz v4, :cond_1

    const/16 v4, 0x3a

    .line 252
    invoke-virtual {p0, v4, p1}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->sendMessage(ILjava/lang/Object;)V

    const/16 p1, 0x6d

    .line 253
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->sendMessage(ILjava/lang/Object;)V

    const/16 p1, 0x6e

    .line 254
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->sendMessage(ILjava/lang/Object;)V

    const/16 p1, 0x6f

    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->sendMessage(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 257
    iget-object p1, p0, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->mStrokes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecIms$Strokes2TextConverter;->recognize()V

    :cond_1
    return-void
.end method
