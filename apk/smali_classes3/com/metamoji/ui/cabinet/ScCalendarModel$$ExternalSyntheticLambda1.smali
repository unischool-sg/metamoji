.class public final synthetic Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/noteanytime/MainActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/noteanytime/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/noteanytime/MainActivity;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/noteanytime/MainActivity;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->updateRoomArray$lambda$4$lambda$3(Lcom/metamoji/noteanytime/MainActivity;Ljava/util/List;)V

    return-void
.end method
