.class Lcom/metamoji/nt/NtSetTextLocation$5;
.super Ljava/lang/Object;
.source "NtSetTextLocation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSetTextLocation;->autoClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtSetTextLocation;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSetTextLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$5;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation$5;->this$0:Lcom/metamoji/nt/NtSetTextLocation;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtSetTextLocation;->-$$Nest$mclose(Lcom/metamoji/nt/NtSetTextLocation;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
