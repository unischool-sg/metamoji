.class Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecognizeUserDictionaryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrokesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    const/4 p1, 0x0

    .line 309
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 319
    const-string p3, "layout.recog_user_dict_list_item"

    invoke-static {p3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 322
    :cond_0
    const-string p3, "id.check_box"

    invoke-static {p3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 323
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    iget-object v0, v0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesChecked:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    iget-object v0, v0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesChecked:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    iget-object v0, v0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesChecked:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 324
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 326
    const-string p3, "id.stroke_view"

    invoke-static {p3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/mazec/ui/StrokeView;

    .line 327
    invoke-virtual {p3, v2}, Lcom/metamoji/mazec/ui/StrokeView;->setEditable(Z)V

    .line 328
    invoke-virtual {p3, v1}, Lcom/metamoji/mazec/ui/StrokeView;->setHorizentalCenterring(Z)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    if-eqz p1, :cond_2

    .line 331
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->getStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/metamoji/mazec/ui/StrokeView;->setStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V

    return-object p2

    .line 333
    :cond_2
    invoke-virtual {p3}, Lcom/metamoji/mazec/ui/StrokeView;->clearStrokes()V

    return-object p2
.end method
