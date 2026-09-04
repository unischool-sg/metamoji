.class Lcom/metamoji/un/text/model/TextModel$1;
.super Ljava/lang/Object;
.source "TextModel.java"

# interfaces
.implements Lcom/metamoji/cm/IAction1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/TextModel;->setText(Ljava/lang/CharSequence;)V
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

    .line 910
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel$1;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljava/lang/CharSequence;)V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$1;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-static {v0}, Lcom/metamoji/un/text/model/TextModel;->-$$Nest$fgetstringWsArray(Lcom/metamoji/un/text/model/TextModel;)Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v1, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

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

    .line 910
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel$1;->perform(Ljava/lang/CharSequence;)V

    return-void
.end method
