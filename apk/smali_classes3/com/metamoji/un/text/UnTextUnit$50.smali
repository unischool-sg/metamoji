.class Lcom/metamoji/un/text/UnTextUnit$50;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$textModelDirectionData:Lcom/metamoji/un/text/model/TextModel;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11907
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$50;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$50;->val$textModelDirectionData:Lcom/metamoji/un/text/model/TextModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 11910
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$50;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$50;->val$textModelDirectionData:Lcom/metamoji/un/text/model/TextModel;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mreflectDirectionWithTextModel(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/TextModel;)V

    return-void
.end method
