.class Lcom/metamoji/un/text/sprite/TextSprite$1;
.super Ljava/lang/Object;
.source "TextSprite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/sprite/TextSprite;->paintContent(Lcom/metamoji/df/sprite/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/sprite/TextSprite;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/sprite/TextSprite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/metamoji/un/text/sprite/TextSprite$1;->this$0:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite$1;->this$0:Lcom/metamoji/un/text/sprite/TextSprite;

    invoke-static {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->-$$Nest$fgettextModel(Lcom/metamoji/un/text/sprite/TextSprite;)Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->updateCursorControlerPositions()V

    return-void
.end method
