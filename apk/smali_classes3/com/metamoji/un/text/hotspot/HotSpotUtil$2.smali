.class Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;
.super Ljava/lang/Object;
.source "HotSpotUtil.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/hotspot/HotSpotUtil;->suggestions(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/cm/IAction1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isws2:Lcom/metamoji/cm/mutable/MutableInt;

.field final synthetic val$onCompletedAction:Lcom/metamoji/cm/IAction1;

.field final synthetic val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

.field final synthetic val$wordEnd2:Lcom/metamoji/cm/mutable/MutableInt;

.field final synthetic val$wordStart2:Lcom/metamoji/cm/mutable/MutableInt;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/cm/IAction1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$wordStart2:Lcom/metamoji/cm/mutable/MutableInt;

    iput-object p2, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$wordEnd2:Lcom/metamoji/cm/mutable/MutableInt;

    iput-object p3, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$isws2:Lcom/metamoji/cm/mutable/MutableInt;

    iput-object p4, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iput-object p5, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$onCompletedAction:Lcom/metamoji/cm/IAction1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 252
    array-length v0, p1

    if-lez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$wordStart2:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$wordEnd2:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$isws2:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v2

    const/4 v3, 0x0

    .line 257
    aget-object p1, p1, v3

    .line 258
    invoke-virtual {p1}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    .line 260
    invoke-virtual {p1, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v6

    .line 261
    invoke-virtual {v6}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 263
    invoke-virtual {p1, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    .line 264
    invoke-virtual {p1, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    if-ne v7, v0, :cond_0

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_0

    .line 266
    iget-object p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-static {v7, v2, p1}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->-$$Nest$smtextPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-static {v8, v2, v0}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->-$$Nest$smtextPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v1, p1, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 270
    new-instance p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;

    invoke-direct {p1, v1}, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;-><init>(Lcom/metamoji/un/text/model/TextRange;)V

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->suggestions:Ljava/util/List;

    .line 273
    invoke-virtual {v6}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 275
    iget-object v1, p1, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->suggestions:Ljava/util/List;

    invoke-virtual {v6, v3}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;->val$onCompletedAction:Lcom/metamoji/cm/IAction1;

    invoke-interface {v0, p1}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0

    return-void
.end method
