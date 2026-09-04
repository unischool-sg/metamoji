.class public Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
.super Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;
.source "StringWithStrokes.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private reduceInkInStrokes(Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)V
    .locals 4

    .line 819
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemInkSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemInkSettings;

    .line 820
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    .line 821
    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getCountOfPoints()I

    move-result v1

    .line 822
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;->getInkID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 827
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 829
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->reduceQuantity(ILjava/lang/String;)F

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public appendLineRef(Lcom/metamoji/un/text/model/TextLine;Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->lineRefArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->_lineRefTextPositionArray:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendString(Ljava/lang/CharSequence;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 163
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 165
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_4

    .line 167
    iget-object v3, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 172
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p3, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveString(III)Ljava/util/Map;

    move-result-object p1

    .line 173
    invoke-interface {p2, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;",
            "Lcom/metamoji/un/text/model/undo/ITextUndoManager;",
            "I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 187
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    if-nez v1, :cond_2

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    .line 199
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 201
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 205
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p4, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveString(III)Ljava/util/Map;

    move-result-object p1

    .line 206
    invoke-interface {p3, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public applyStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Lcom/metamoji/cm/Range;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/undo/ITextUndoManager;",
            "I)V"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p3, Lcom/metamoji/cm/Range;->location:I

    iget v1, p3, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_3

    if-eqz p5, :cond_0

    .line 618
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    .line 619
    invoke-static {v0, p3}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    iget v2, p3, Lcom/metamoji/cm/Range;->location:I

    invoke-direct {v1, p6, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 618
    invoke-static {p4, v0, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStrokesStyle(Ljava/util/EnumSet;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;

    move-result-object p6

    .line 620
    invoke-interface {p5, p6}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 623
    :cond_0
    iget p5, p3, Lcom/metamoji/cm/Range;->location:I

    :goto_0
    iget p6, p3, Lcom/metamoji/cm/Range;->location:I

    iget v0, p3, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr p6, v0

    if-ge p5, p6, :cond_3

    .line 624
    iget-object p6, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {p6, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 625
    invoke-interface {p6, p1, p4}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->applyStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V

    if-eqz p2, :cond_2

    .line 626
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 627
    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 628
    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    :cond_1
    invoke-direct {p0, p2, p6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->reduceInkInStrokes(Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)V

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public clearLineRefArray()V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->lineRefArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 796
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->_lineRefTextPositionArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearStrings(Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {p2, v0, v1, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertString(IILjava/lang/CharSequence;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    .line 780
    invoke-interface {p1, p2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 783
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 785
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 786
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public clearStrokes(Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 759
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStrokes(IILjava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    .line 760
    invoke-interface {p1, p2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    :cond_0
    const/4 p1, 0x0

    .line 763
    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    .line 765
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 766
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public deleteInRange(Lcom/metamoji/cm/Range;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 3

    .line 372
    iget v0, p1, Lcom/metamoji/cm/Range;->length:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-nez v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 378
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget v1, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/metamoji/cm/Range;->length:I

    .line 381
    :cond_1
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Lcom/metamoji/cm/StringUtils;->substring(Ljava/lang/CharSequence;Lcom/metamoji/cm/Range;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3, v0, v1, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertString(IILjava/lang/CharSequence;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 382
    invoke-interface {p2, v0}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 384
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/metamoji/cm/StringUtils;->delete(Ljava/lang/StringBuilder;Lcom/metamoji/cm/Range;)V

    .line 386
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    .line 388
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->clearStrokes(Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    :cond_2
    :goto_0
    return-void

    .line 392
    :cond_3
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3, v0, v1, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStrokes(IILjava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 393
    invoke-interface {p2, v0}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 395
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    .line 397
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    .line 399
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->clearStrings(Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    return-void
.end method

.method public expandOrReduceFontSize(FLcom/metamoji/cm/Range;)V
    .locals 4

    .line 527
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 529
    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    :goto_0
    iget v2, p2, Lcom/metamoji/cm/Range;->location:I

    iget v3, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 530
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 531
    new-instance v3, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v3, v2}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 532
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->getFontSize()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setFontSize(F)V

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v3, v1}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v3, v1

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    move-object v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_2
    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    :goto_1
    iget v2, p2, Lcom/metamoji/cm/Range;->location:I

    iget v3, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 546
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 547
    new-instance v3, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v3, v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 548
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontSize(F)V

    if-eqz v1, :cond_3

    .line 550
    invoke-virtual {v3, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v3, v1

    .line 553
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eq v1, v3, :cond_4

    move-object v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public fillAttributesForString(Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->fillAttributesForString(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    return-void
.end method

.method public insertString(Ljava/lang/CharSequence;ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-lez p2, :cond_2

    .line 227
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/attr/StringAttributes;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 230
    new-instance v0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 232
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_4

    .line 234
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    add-int v3, p2, v1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 239
    invoke-static {p4, p2, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveString(III)Ljava/util/Map;

    move-result-object p1

    .line 240
    invoke-interface {p3, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public insertString(Ljava/lang/CharSequence;Ljava/util/List;ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;I",
            "Lcom/metamoji/un/text/model/undo/ITextUndoManager;",
            "I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 255
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->insertString(Ljava/lang/CharSequence;ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    return-void

    .line 260
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 262
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 269
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    if-nez p1, :cond_3

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_6

    .line 274
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 275
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_4

    goto :goto_2

    .line 279
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 281
    :goto_2
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 282
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    add-int v3, p3, p1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 284
    :cond_5
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_7

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 289
    invoke-static {p5, p3, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveString(III)Ljava/util/Map;

    move-result-object p1

    .line 290
    invoke-interface {p4, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public insertStrokes(Ljava/util/List;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;I)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 331
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    .line 333
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 335
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    if-nez v1, :cond_1

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-static {v1, p3, p1}, Lcom/metamoji/cm/ListUtils;->add(Ljava/util/List;ILjava/util/List;)V

    .line 339
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    if-nez p1, :cond_2

    .line 340
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    :cond_2
    if-nez p2, :cond_4

    .line 344
    new-instance p1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>()V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_3

    .line 346
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    add-int v2, p3, p2

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 349
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-static {p1, p3, p2}, Lcom/metamoji/cm/ListUtils;->add(Ljava/util/List;ILjava/util/List;)V

    return-void
.end method

.method public putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Lcom/metamoji/cm/Range;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/undo/ITextUndoManager;",
            "I)V"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    iget v1, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 439
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    .line 443
    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 446
    new-instance v5, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v5, v4}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 447
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontSize(F)V

    .line 448
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 452
    :cond_1
    iget v3, p2, Lcom/metamoji/cm/Range;->location:I

    invoke-static {p5, v3, v1, v2, p3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStringAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p5

    .line 454
    invoke-interface {p4, p5}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 458
    :cond_2
    iget p4, p2, Lcom/metamoji/cm/Range;->location:I

    :goto_1
    iget p5, p2, Lcom/metamoji/cm/Range;->location:I

    iget v1, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr p5, v1

    if-ge p4, p5, :cond_5

    .line 459
    iget-object p5, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 460
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1, p5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 461
    invoke-virtual {v1, p1, p3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    if-eqz v0, :cond_3

    .line 463
    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    move-object v1, v0

    .line 466
    :cond_3
    iget-object p5, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {p5, p4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    move-object v0, v1

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public putStrokeAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            "Lcom/metamoji/cm/Range;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/undo/ITextUndoManager;",
            "I)V"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    iget v1, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 487
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    .line 491
    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 494
    new-instance v5, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v5, v4}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 495
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getFontSize()F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setFontSize(F)V

    .line 496
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 500
    :cond_1
    iget v3, p2, Lcom/metamoji/cm/Range;->location:I

    invoke-static {p5, v3, v1, v2, p3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStrokesAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p5

    .line 501
    invoke-interface {p4, p5}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 505
    :cond_2
    iget p4, p2, Lcom/metamoji/cm/Range;->location:I

    :goto_1
    iget p5, p2, Lcom/metamoji/cm/Range;->location:I

    iget v1, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr p5, v1

    if-ge p4, p5, :cond_5

    .line 506
    iget-object p5, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 507
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v1, p5}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 508
    invoke-virtual {v1, p1, p3}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    if-eqz v0, :cond_3

    .line 510
    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    move-object v1, v0

    .line 513
    :cond_3
    iget-object p5, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {p5, p4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    move-object v0, v1

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public putStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Lcom/metamoji/cm/Range;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/undo/ITextUndoManager;",
            "I)V"
        }
    .end annotation

    .line 574
    iget-object p2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    if-eqz p2, :cond_1

    iget p2, p3, Lcom/metamoji/cm/Range;->location:I

    iget v0, p3, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-eqz p5, :cond_0

    .line 577
    iget-object p2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    .line 578
    invoke-static {p2, p3}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget v1, p3, Lcom/metamoji/cm/Range;->location:I

    invoke-direct {v0, p6, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 577
    invoke-static {p2, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createReplaceStrokesStyle(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;

    move-result-object p2

    .line 579
    invoke-interface {p5, p2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 590
    :cond_0
    iget p2, p3, Lcom/metamoji/cm/Range;->location:I

    :goto_0
    iget p5, p3, Lcom/metamoji/cm/Range;->location:I

    iget p6, p3, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr p5, p6

    if-ge p2, p5, :cond_1

    .line 591
    iget-object p5, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 592
    invoke-interface {p5, p1, p4}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->applyStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeStringAndAttributesInRange(Lcom/metamoji/cm/Range;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/metamoji/cm/StringUtils;->delete(Ljava/lang/StringBuilder;Lcom/metamoji/cm/Range;)V

    .line 302
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    return-void
.end method

.method public removeStrokesAndAttributesInRange(Lcom/metamoji/cm/Range;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    .line 360
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    return-void
.end method

.method public replaceNewLineCodeAtEnd()Z
    .locals 4

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sget-char v3, Lcom/metamoji/un/text/model/TextModel;->UNICODE_NEW_LINE_CHAR:C

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public replaceStrokes(Ljava/util/List;Lcom/metamoji/cm/Range;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Lcom/metamoji/cm/Range;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 642
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    iget v2, p2, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHotSpotRanges(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/Range;",
            ">;)V"
        }
    .end annotation

    .line 806
    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hotSpotRanges:Ljava/util/List;

    return-void
.end method

.method public setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    return-void
.end method

.method public setRenderStrokes(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->renderStrokes:Z

    return-void
.end method

.method public splitAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
    .locals 4

    .line 664
    new-instance v0, Lcom/metamoji/cm/Range;

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-direct {v0, p1, v1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 665
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 670
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    .line 672
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    if-eqz p2, :cond_0

    .line 676
    iget v0, v0, Lcom/metamoji/cm/Range;->location:I

    invoke-static {p3, v0, v1, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertString(IILjava/lang/CharSequence;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 677
    invoke-interface {p2, v0}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 680
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0, v1, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 682
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 684
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p1

    if-lez p1, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 687
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->clearStrokes(Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    :cond_1
    return-object v0
.end method

.method public splitStrokesAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 707
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->clearStrings(Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 711
    :cond_0
    new-instance v0, Lcom/metamoji/cm/Range;

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-direct {v0, p1, v1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 714
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    .line 717
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokes:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    .line 720
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    .line 722
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    if-eqz p2, :cond_1

    .line 726
    iget v0, v0, Lcom/metamoji/cm/Range;->location:I

    invoke-static {p3, v0, p1, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStrokes(IILjava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p3

    .line 727
    invoke-interface {p2, p3}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 730
    :cond_1
    new-instance p2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {p2, p1, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
