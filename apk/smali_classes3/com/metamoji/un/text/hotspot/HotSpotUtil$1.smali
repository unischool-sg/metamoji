.class Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;
.super Ljava/lang/Object;
.source "HotSpotUtil.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/hotspot/HotSpotUtil;->spellCheck(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isws2:Lcom/metamoji/cm/mutable/MutableInt;

.field final synthetic val$onCompletedAction:Lcom/metamoji/cm/IAction1;

.field final synthetic val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/cm/IAction1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;->val$isws2:Lcom/metamoji/cm/mutable/MutableInt;

    iput-object p2, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;->val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iput-object p3, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;->val$onCompletedAction:Lcom/metamoji/cm/IAction1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 11

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;->val$isws2:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v1

    if-eqz p1, :cond_2

    .line 162
    array-length v2, p1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 163
    aget-object p1, p1, v2

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    .line 167
    invoke-virtual {p1, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 169
    invoke-virtual {p1, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;->val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-static {v6, v1, v7}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->-$$Nest$smtextPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v6

    .line 170
    invoke-virtual {p1, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;->val$stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-static {v7, v1, v8}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->-$$Nest$smtextPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v7

    .line 172
    new-instance v8, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v8, v6, v7}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 173
    new-instance v6, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;

    invoke-direct {v6, v8}, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;-><init>(Lcom/metamoji/un/text/model/TextRange;)V

    .line 174
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->suggestions:Ljava/util/List;

    .line 176
    invoke-virtual {v5}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    .line 178
    iget-object v9, v6, Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;->suggestions:Ljava/util/List;

    invoke-virtual {v5, v8}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 181
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;->val$onCompletedAction:Lcom/metamoji/cm/IAction1;

    invoke-interface {p1, v0}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0

    return-void
.end method
