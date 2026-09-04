.class public interface abstract Lcom/metamoji/un/text/model/ITextInput;
.super Ljava/lang/Object;
.source "ITextInput.java"


# virtual methods
.method public abstract beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;
.end method

.method public abstract endOfDocument()Lcom/metamoji/un/text/model/TextPosition;
.end method

.method public abstract getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;
.end method

.method public abstract offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I
.end method

.method public abstract positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
.end method

.method public abstract textInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/lang/CharSequence;
.end method

.method public abstract textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;
.end method
