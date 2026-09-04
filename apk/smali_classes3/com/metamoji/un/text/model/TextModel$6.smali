.class Lcom/metamoji/un/text/model/TextModel$6;
.super Ljava/lang/Object;
.source "TextModel.java"

# interfaces
.implements Lcom/metamoji/cm/IAction1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/TextModel;->demoteParagraphListLevel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IAction1<",
        "Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;",
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

    .line 5551
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel$6;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V
    .locals 0

    .line 5553
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->demoteListLevel()I

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

    .line 5551
    check-cast p1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel$6;->perform(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    return-void
.end method
