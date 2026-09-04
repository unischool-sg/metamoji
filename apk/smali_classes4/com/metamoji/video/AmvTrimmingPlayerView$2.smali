.class final synthetic Lcom/metamoji/video/AmvTrimmingPlayerView$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AmvTrimmingPlayerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvTrimmingPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/video/AmvTrimmingPlayerView;

    const-string v5, "onProgress(F)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onProgress"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$2;->invoke(F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(F)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/video/AmvTrimmingPlayerView;

    invoke-static {v0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView;->access$onProgress(Lcom/metamoji/video/AmvTrimmingPlayerView;F)V

    return-void
.end method
