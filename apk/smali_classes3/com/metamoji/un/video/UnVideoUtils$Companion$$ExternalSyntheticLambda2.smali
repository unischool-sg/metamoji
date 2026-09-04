.class public final synthetic Lcom/metamoji/un/video/UnVideoUtils$Companion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/metamoji/video/AmvFrameExtractor;

    check-cast p2, Landroid/util/Size;

    invoke-static {p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoFinish$lambda$4$lambda$0(Lcom/metamoji/video/AmvFrameExtractor;Landroid/util/Size;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
