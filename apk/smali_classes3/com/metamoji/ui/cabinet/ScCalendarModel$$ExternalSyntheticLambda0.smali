.class public final synthetic Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/metamoji/ui/cabinet/ScCalendarModel;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLcom/metamoji/ui/cabinet/ScCalendarModel;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->reloadCalenderData$lambda$1$lambda$0(ZLcom/metamoji/ui/cabinet/ScCalendarModel;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
