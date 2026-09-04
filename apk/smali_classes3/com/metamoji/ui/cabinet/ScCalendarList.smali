.class public final Lcom/metamoji/ui/cabinet/ScCalendarList;
.super Landroid/view/ViewGroup;
.source "ScCalendarList.kt"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/ScCalendarList$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScCalendarList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScCalendarList.kt\ncom/metamoji/ui/cabinet/ScCalendarList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,317:1\n1915#2,2:318\n*S KotlinDebug\n*F\n+ 1 ScCalendarList.kt\ncom/metamoji/ui/cabinet/ScCalendarList\n*L\n142#1:318,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\tB#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000bH\u0014J0\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000bH\u0014J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\u000e\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u001eJ\u0006\u00100\u001a\u00020\u0010J\u0014\u00101\u001a\u00020\u00102\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\'03J\u0016\u0010?\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\'2\u0006\u0010A\u001a\u00020BJ&\u0010C\u001a\u00020\u00102\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0008\u0010D\u001a\u0004\u0018\u00010\'2\u0008\u0010E\u001a\u0004\u0018\u00010\'H\u0016J)\u0010K\u001a\u00020\u00102\u001c\u0010L\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100H\u0012\u0006\u0012\u0004\u0018\u00010\'0G\u00a2\u0006\u0002\u0010MJ\u0008\u0010N\u001a\u00020\u0010H\u0014R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R&\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0&0&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R&\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0&0&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010)\"\u0004\u0008/\u0010+R\u001a\u00104\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R8\u0010F\u001a \u0012\u001a\u0012\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100H\u0012\u0006\u0012\u0004\u0018\u00010\'0G\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010)\"\u0004\u0008J\u0010+\u00a8\u0006O"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarList;",
        "Landroid/view/ViewGroup;",
        "Lcom/metamoji/ui/MenuEventListener;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "paint",
        "Landroid/graphics/Paint;",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "p0",
        "",
        "p1",
        "p2",
        "p3",
        "p4",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "m_model",
        "Lcom/metamoji/ui/cabinet/ScCalendarModel;",
        "getM_model",
        "()Lcom/metamoji/ui/cabinet/ScCalendarModel;",
        "setM_model",
        "(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V",
        "notifyModel",
        "model",
        "m_dataArray",
        "",
        "",
        "getM_dataArray",
        "()Ljava/util/List;",
        "setM_dataArray",
        "(Ljava/util/List;)V",
        "m_viewArray",
        "Lcom/metamoji/ui/cabinet/ScCalendarCell;",
        "getM_viewArray",
        "setM_viewArray",
        "clear",
        "updateCalendarList",
        "roomArray",
        "",
        "m_maxy",
        "getM_maxy",
        "()I",
        "setM_maxy",
        "(I)V",
        "mTask",
        "Lkotlinx/coroutines/Job;",
        "getMTask",
        "()Lkotlinx/coroutines/Job;",
        "setMTask",
        "(Lkotlinx/coroutines/Job;)V",
        "handleLongClick",
        "dic",
        "view",
        "Landroid/view/View;",
        "onSelect",
        "index",
        "options",
        "tasks",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "getTasks",
        "setTasks",
        "addTask",
        "task",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onDetachedFromWindow",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mTask:Lkotlinx/coroutines/Job;

.field private m_dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_maxy:I

.field private m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

.field private m_viewArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/ScCalendarCell;",
            ">;>;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    sget-object v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_SEP()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    sget-object p1, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_BG()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->setBackgroundColor(I)V

    .line 52
    new-instance p1, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 44
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    sget-object p2, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_SEP()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    sget-object p1, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_BG()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->setBackgroundColor(I)V

    .line 52
    new-instance p1, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 44
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    sget-object p2, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_SEP()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    sget-object p1, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_BG()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->setBackgroundColor(I)V

    .line 52
    new-instance p1, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    return-void
.end method

.method static final _init_$lambda$2(Lcom/metamoji/ui/cabinet/ScCalendarList;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_1

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 61
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static final lambda$2$lambda$1(Lcom/metamoji/ui/cabinet/ScCalendarList;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->getM_roomArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->updateCalendarList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static final notifyModel$lambda$4(Lcom/metamoji/ui/cabinet/ScCalendarList;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->getM_roomArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->updateCalendarList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static final onSelect$lambda$11(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/ScCalendarList;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 282
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->getRoomId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 283
    new-instance p1, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    invoke-static {p0, p1}, Lcom/metamoji/ns/NsShareViewCommand;->handleCollaboRoomEdit(Ljava/lang/String;Lcom/metamoji/ns/INsShareViewCommandCompletionAction;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static final onSelect$lambda$11$lambda$10(Lcom/metamoji/ui/cabinet/ScCalendarList;ZLjava/util/Map;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 285
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static final onSelect$lambda$11$lambda$10$lambda$9(Lcom/metamoji/ui/cabinet/ScCalendarList;)V
    .locals 1

    .line 286
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->reloadCalenderData(Z)V

    :cond_0
    return-void
.end method

.method static final updateCalendarList$lambda$7(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 191
    invoke-static {p0, p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static final updateCalendarList$lambda$8(Lcom/metamoji/ui/cabinet/ScCalendarList;Ljava/lang/Object;Lcom/metamoji/ui/cabinet/ScCalendarCell;Landroid/view/View;)Z
    .locals 0

    .line 193
    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarList;->handleLongClick(Ljava/lang/Object;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addTask(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->tasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->tasks:Ljava/util/List;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->tasks:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 129
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/ScCalendarCell;

    .line 130
    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/ScCalendarList;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final getMTask()Lkotlinx/coroutines/Job;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->mTask:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getM_dataArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    return-object v0
.end method

.method public final getM_maxy()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_maxy:I

    return v0
.end method

.method public final getM_model()Lcom/metamoji/ui/cabinet/ScCalendarModel;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-object v0
.end method

.method public final getM_viewArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/ScCalendarCell;",
            ">;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    return-object v0
.end method

.method public final getTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->tasks:Ljava/util/List;

    return-object v0
.end method

.method public final handleLongClick(Ljava/lang/Object;Landroid/view/View;)Z
    .locals 5

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 225
    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_1

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    .line 232
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_ROOM_EDIT:Lcom/metamoji/ui/PopupCommand;

    .line 234
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CHANGE_START_DATE_TIME:I

    .line 231
    invoke-direct {v2, v3, p1, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 230
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    .line 242
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_SHOW_URL:Lcom/metamoji/ui/PopupCommand;

    .line 244
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MENU_SHOW_URL:I

    .line 241
    invoke-direct {v2, v3, p1, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 240
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    .line 251
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_REACQUISITION_SHARE_NOTE:Lcom/metamoji/ui/PopupCommand;

    .line 253
    sget v4, Lcom/metamoji/noteanytime/R$string;->REACQUISITION_SHARE_NOTE:I

    .line 250
    invoke-direct {v2, v3, p1, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 249
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance p1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 258
    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 259
    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    move-object p2, p0

    check-cast p2, Lcom/metamoji/ui/MenuEventListener;

    invoke-virtual {v0, v1, p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final notifyModel(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    .line 117
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 314
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 315
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->mTask:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 105
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    .line 109
    sget-object v4, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->rowWidth(II)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v5, v3

    sub-float v8, v1, v0

    .line 110
    iget-object v9, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move v7, v5

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/ScCalendarCell;

    .line 96
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getM_frame()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getM_frame()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getM_frame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->getM_frame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p4, p5, v0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->layout(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 71
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 73
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 74
    iget v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_maxy:I

    if-le v2, v1, :cond_0

    move v1, v2

    .line 78
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->setMeasuredDimension(II)V

    .line 79
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/ScCalendarCell;

    .line 81
    invoke-virtual {v2, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->measure(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x1

    .line 268
    invoke-static {p3, p1}, Lcom/metamoji/ns/NsShareViewCommand;->getDocInfo(Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object p3

    .line 271
    const-string v0, "driveId"

    .line 269
    invoke-static {p3, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    const-string v1, "documentId"

    .line 273
    invoke-static {p3, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 278
    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/metamoji/ui/cabinet/ScCalendarList$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p2, v1, p2

    :goto_0
    if-eq p2, p1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    return-void

    .line 298
    :cond_1
    invoke-static {v0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleReacquisitionShareNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_2
    invoke-static {v0, p3, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 280
    :cond_3
    new-instance p1, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0, p3, p0}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    invoke-static {v0, p3, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareAccessDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void
.end method

.method public final setMTask(Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->mTask:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setM_dataArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    return-void
.end method

.method public final setM_maxy(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_maxy:I

    return-void
.end method

.method public final setM_model(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-void
.end method

.method public final setM_viewArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/ScCalendarCell;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    return-void
.end method

.method public final setTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList;->tasks:Ljava/util/List;

    return-void
.end method

.method public final updateCalendarList(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string/jumbo v1, "roomArray"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->mTask:Lkotlinx/coroutines/Job;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 138
    :cond_0
    iput-object v4, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->mTask:Lkotlinx/coroutines/Job;

    .line 139
    iput-object v4, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->tasks:Ljava/util/List;

    .line 140
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    if-nez v1, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->clear()V

    .line 142
    new-instance v5, Lkotlin/ranges/IntRange;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v5, Ljava/lang/Iterable;

    .line 318
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 143
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 147
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->getCurrentDate()Ljava/time/LocalDate;

    move-result-object v1

    move v6, v7

    :goto_1
    const/4 v8, 0x7

    if-ge v6, v8, :cond_3

    .line 150
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x1

    .line 151
    invoke-virtual {v1, v8, v9}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    const-string v8, "plusDays(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 155
    instance-of v6, v2, Ljava/util/Map;

    if-eqz v6, :cond_5

    check-cast v2, Ljava/util/Map;

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_4

    .line 156
    invoke-static {v2}, Lcom/metamoji/ns/NsShareViewCommand;->getOpenDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v6

    .line 158
    invoke-virtual {v6}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v6

    .line 160
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 162
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    move v9, v7

    :goto_3
    if-ge v9, v8, :cond_4

    .line 164
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/LocalDate;

    .line 165
    move-object v11, v6

    check-cast v11, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v10, v11}, Ljava/time/LocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 166
    iget-object v10, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    const/high16 v1, 0x40800000    # 4.0f

    .line 174
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 176
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v7

    move v6, v5

    move v8, v6

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 177
    sget-object v10, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->rowWidth(II)I

    move-result v10

    .line 178
    sget-object v11, Lcom/metamoji/ui/cabinet/ScCalendarCell;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;

    mul-int/lit8 v12, v1, 0x2

    sub-int v13, v10, v12

    invoke-virtual {v11, v13}, Lcom/metamoji/ui/cabinet/ScCalendarCell$Companion;->calcSize(I)Landroid/util/Size;

    move-result-object v11

    .line 180
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v7

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 181
    new-instance v15, Landroid/graphics/Rect;

    add-int v7, v13, v1

    add-int v16, v8, v1

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v17

    add-int v4, v16, v17

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v16

    add-int v3, v7, v16

    invoke-direct {v15, v8, v7, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    new-instance v3, Lcom/metamoji/ui/cabinet/ScCalendarCell;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "getContext(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/metamoji/ui/cabinet/ScCalendarCell;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 183
    invoke-static {v14, v4}, Lcom/metamoji/ns/NsShareViewCommand;->getDocInfo(Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 185
    const-string v4, "driveId"

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move/from16 v16, v1

    instance-of v1, v4, Ljava/lang/String;

    if-eqz v1, :cond_8

    check-cast v4, Ljava/lang/String;

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 186
    :goto_6
    const-string v1, "documentId"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_9

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 187
    :goto_7
    invoke-virtual {v3, v14, v15}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->setDic(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 188
    invoke-virtual {v3, v0}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->checkThumbnail(Lcom/metamoji/ui/cabinet/ScCalendarList;)V

    .line 189
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->updateThumbnail()V

    .line 190
    new-instance v7, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda5;

    invoke-direct {v7, v4, v1}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance v1, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v14, v3}, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;Ljava/lang/Object;Lcom/metamoji/ui/cabinet/ScCalendarCell;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/ui/cabinet/ScCalendarCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 194
    move-object v1, v3

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->addView(Landroid/view/View;)V

    .line 195
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_viewArray:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr v1, v12

    add-int/2addr v13, v1

    move/from16 v1, v16

    const/4 v3, 0x1

    goto :goto_8

    :cond_a
    move v3, v4

    :goto_8
    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_b
    move/from16 v16, v1

    if-ge v5, v13, :cond_c

    move v5, v13

    :cond_c
    add-int/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v16

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 202
    :cond_d
    iput v5, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->m_maxy:I

    .line 203
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->requestLayout()V

    .line 205
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/cabinet/ScCalendarList;->mTask:Lkotlinx/coroutines/Job;

    return-void
.end method
