.class public final synthetic Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;

    iput-wide p2, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;

    iget-wide v1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->request$lambda$0(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;J)V

    return-void
.end method
