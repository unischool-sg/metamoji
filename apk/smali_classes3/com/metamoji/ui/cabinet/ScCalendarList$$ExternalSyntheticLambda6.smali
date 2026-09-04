.class public final synthetic Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/ScCalendarList;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/metamoji/ui/cabinet/ScCalendarCell;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/ScCalendarList;Ljava/lang/Object;Lcom/metamoji/ui/cabinet/ScCalendarCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;->f$0:Lcom/metamoji/ui/cabinet/ScCalendarList;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;->f$2:Lcom/metamoji/ui/cabinet/ScCalendarCell;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;->f$0:Lcom/metamoji/ui/cabinet/ScCalendarList;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$$ExternalSyntheticLambda6;->f$2:Lcom/metamoji/ui/cabinet/ScCalendarCell;

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->updateCalendarList$lambda$8(Lcom/metamoji/ui/cabinet/ScCalendarList;Ljava/lang/Object;Lcom/metamoji/ui/cabinet/ScCalendarCell;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
