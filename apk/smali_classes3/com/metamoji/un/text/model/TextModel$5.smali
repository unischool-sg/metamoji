.class Lcom/metamoji/un/text/model/TextModel$5;
.super Ljava/lang/Object;
.source "TextModel.java"

# interfaces
.implements Lcom/metamoji/cm/IAction3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/TextModel;->expandOrReduceFontSizeCore(FLjava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IAction3<",
        "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
        "Lcom/metamoji/cm/Range;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/model/TextModel;

.field final synthetic val$retUndoData:Ljava/util/List;

.field final synthetic val$sizeDelta:F


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/model/TextModel;FLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5324
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel$5;->this$0:Lcom/metamoji/un/text/model/TextModel;

    iput p2, p0, Lcom/metamoji/un/text/model/TextModel$5;->val$sizeDelta:F

    iput-object p3, p0, Lcom/metamoji/un/text/model/TextModel$5;->val$retUndoData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/cm/Range;Ljava/lang/Integer;)V
    .locals 6

    .line 5329
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5330
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v0

    .line 5333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 5335
    new-instance v4, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v4, v3}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 5336
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->getFontSize()F

    move-result v3

    iget v5, p0, Lcom/metamoji/un/text/model/TextModel$5;->val$sizeDelta:F

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setFontSize(F)V

    .line 5337
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5340
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v2, p2, Lcom/metamoji/cm/Range;->location:I

    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {p3, v2, v0, v1, v3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStrokesAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p3

    goto :goto_2

    .line 5343
    :cond_1
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v0

    .line 5346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5347
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 5348
    new-instance v4, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v4, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 5349
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v3

    iget v5, p0, Lcom/metamoji/un/text/model/TextModel$5;->val$sizeDelta:F

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontSize(F)V

    .line 5350
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5353
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v2, p2, Lcom/metamoji/cm/Range;->location:I

    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {p3, v2, v0, v1, v3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStringAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p3

    .line 5355
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$5;->val$retUndoData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5358
    iget p3, p0, Lcom/metamoji/un/text/model/TextModel$5;->val$sizeDelta:F

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->expandOrReduceFontSize(FLcom/metamoji/cm/Range;)V

    return-void
.end method

.method public bridge synthetic perform(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 5324
    check-cast p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    check-cast p2, Lcom/metamoji/cm/Range;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/text/model/TextModel$5;->perform(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/cm/Range;Ljava/lang/Integer;)V

    return-void
.end method
