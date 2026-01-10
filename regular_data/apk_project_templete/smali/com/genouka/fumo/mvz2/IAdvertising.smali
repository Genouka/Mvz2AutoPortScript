.class public interface abstract Lcom/genouka/fumo/mvz2/IAdvertising;
.super Ljava/lang/Object;
.source "IAdvertising.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
    }
.end annotation


# virtual methods
.method public abstract define(ILjava/lang/String;Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;)V
.end method

.method public abstract disable(I)V
.end method

.method public abstract enable(III)V
.end method

.method public abstract engagement_active()Z
.end method

.method public abstract engagement_available()Z
.end method

.method public abstract engagement_launch()V
.end method

.method public abstract event(Ljava/lang/String;)V
.end method

.method public abstract event_preload(Ljava/lang/String;)V
.end method

.method public abstract getAdDisplayHeight(I)I
.end method

.method public abstract getAdDisplayWidth(I)I
.end method

.method public abstract interstitial_available()Z
.end method

.method public abstract interstitial_display()Z
.end method

.method public abstract move(III)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract on_iap_cancelled(Ljava/lang/String;)V
.end method

.method public abstract on_iap_failed(Ljava/lang/String;)V
.end method

.method public abstract on_iap_success(Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract pc_badge_add(IIIILjava/lang/String;)V
.end method

.method public abstract pc_badge_hide()V
.end method

.method public abstract pc_badge_move(IIII)V
.end method

.method public abstract pc_badge_update()V
.end method

.method public abstract refresh(I)V
.end method

.method public abstract resume()V
.end method

.method public abstract reward_callback(I)V
.end method

.method public abstract setView(I)V
.end method

.method public abstract setup(Ljava/lang/String;)V
.end method
