.class Lcom/metamoji/un/text/model/TextModel$2;
.super Ljava/lang/Object;
.source "TextModel.java"

# interfaces
.implements Lcom/metamoji/cm/IAction1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/TextModel;->insertTextInternal(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IAction1<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/model/TextModel;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/model/TextModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1155
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel$2;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$2;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternalCore(Ljava/lang/CharSequence;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1158
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$2;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0, p1, p1}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->-$$Nest$fputselectedRange(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V

    return-void
.end method

.method public bridge synthetic perform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1155
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel$2;->perform(Ljava/lang/CharSequence;)V

    return-void
.end method
