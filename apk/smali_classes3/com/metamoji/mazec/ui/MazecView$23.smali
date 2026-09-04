.class Lcom/metamoji/mazec/ui/MazecView$23;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initSpaceButton(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1183
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$23;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1186
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$23;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 1208
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1190
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->hasComposingText()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1191
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->isEnableAutoSpace()Z

    move-result p2

    .line 1192
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->setEnableAutoSpace(Z)V

    .line 1193
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$23;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmCnvCandidatesBar(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->commitCurrentCandidate()Z

    .line 1194
    invoke-virtual {v0, p2}, Lcom/metamoji/mazec/MazecIms;->setEnableAutoSpace(Z)V

    .line 1197
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result p2

    .line 1198
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$23;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1199
    iget-object v3, p0, Lcom/metamoji/mazec/ui/MazecView$23;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    xor-int/lit8 v6, p2, 0x1

    const/16 v7, 0x2bc

    const/16 v8, 0x32

    const/16 v4, 0x3e

    const-string v5, " "

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/mazec/ui/MazecView;->startRepeatKey(ILjava/lang/String;ZII)V

    if-nez p2, :cond_3

    .line 1201
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_3
    :goto_0
    return v2
.end method
