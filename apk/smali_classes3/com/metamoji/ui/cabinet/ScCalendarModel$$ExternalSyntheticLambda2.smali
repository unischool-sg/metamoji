.class public final synthetic Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/ScCalendarModel;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-void
.end method


# virtual methods
.method public final onCompleted(ZLjava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->reloadCalenderData$lambda$1(Lcom/metamoji/ui/cabinet/ScCalendarModel;ZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method
